package com.Controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.StringReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Locale;
import org.json.JSONObject;
import org.json.simple.JSONArray;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.text.Document;
import javax.swing.text.Element;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;


@WebServlet("/asd")
public class asd extends HttpServlet {
   private static final String Log = null;

protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
      //���� ���� �޴� �Լ� 
       long systemTime = System.currentTimeMillis();

         
         SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMdd ", Locale.KOREA);      
         String dTime = formatter.format(systemTime);   
         //���ø� �ؼ� - ���� 
         String[] str =  dTime.split("-");      
         String str2 = "";

         
         
         for(int i =0; i< str.length; i++) {
      //      System.out.print(str[i]);
            str2 += str[i];
            str2 = str2.replaceAll(" ", "");
         
         
         }
      
      String apiUrl = "http://apis.data.go.kr/1360000/VilageFcstInfoService/getVilageFcst";
         // Ȩ���������� ���� Ű
         String serviceKey = "dji8ijRhG7jPHWzskJYswLPTxNia1VySljS9bAguvLozhy5b9CRCalaZ%2BJIU647gp%2BzEyVF%2Bbv%2FGQukkiBk6qQ%3D%3D";
         String nx = "59";   //����
         String ny = "74";   //�浵
         String baseDate = str2;   //��ȸ�ϰ���� ��¥
         String baseTime = "1100";   //��ȸ�ϰ���� �ð�
         String type = "JSON";   //Ÿ�� xml, json ��� ..
         
         
           StringBuilder urlBuilder = new StringBuilder(apiUrl);
           urlBuilder.append("?" + URLEncoder.encode("ServiceKey","UTF-8") + "="+serviceKey);
           urlBuilder.append("&" + URLEncoder.encode("nx","UTF-8") + "=" + URLEncoder.encode(nx, "UTF-8")); //�浵
           urlBuilder.append("&" + URLEncoder.encode("ny","UTF-8") + "=" + URLEncoder.encode(ny, "UTF-8")); //����
           urlBuilder.append("&" + URLEncoder.encode("base_date","UTF-8") + "=" + URLEncoder.encode(baseDate, "UTF-8")); /* ��ȸ�ϰ���� ��¥*/
           urlBuilder.append("&" + URLEncoder.encode("base_time","UTF-8") + "=" + URLEncoder.encode(baseTime, "UTF-8")); /* ��ȸ�ϰ���� �ð� AM 02�ú��� 3�ð� ���� */
           urlBuilder.append("&" + URLEncoder.encode("_type","UTF-8") + "=" + URLEncoder.encode(type, "UTF-8"));   /* Ÿ�� */
           
           /*
            * GET������� �����ؼ� �Ķ���� �޾ƿ���
            */
           URL url = new URL(urlBuilder.toString());
           //��� �Ѿ���� Ȯ���ϰ� ������ �Ʒ� ��º� �ּ� ����
  //         System.out.println(url);
           HttpURLConnection conn = (HttpURLConnection) url.openConnection();
           conn.setRequestMethod("GET");
           conn.setRequestProperty("Content-type", "application/json");
 //          System.out.println("Response code: " + conn.getResponseCode());
           BufferedReader rd;
           if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
               rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
           } else {
               rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
           }
           StringBuilder sb = new StringBuilder();
           String line;
           while ((line = rd.readLine()) != null) {
               sb.append(line);
           }
           rd.close();
           conn.disconnect();
           String result= sb.toString();
          // System.out.println(result);
           String wanted = result.split("<item>")[2].split("<fcstValue>")[1].split("</fcstValue>")[0];
           
           // ���� wanted ->
           //��������(PTY) �ڵ� : ����(0), ��(1), ��/��(2), ��(3), �ҳ���(4), �����(5), �����/������(6), ������(7)
           
           
           System.out.print(wanted);
           
           
           
        // ���ڿ��� JSON���� �Ľ��մϴ�. ������ �迭���·� ����� �����ͱ��� �Ľ� ������� �������� 
        // �Ľ� ���� ~! 
           
          
//         // XML
//           try {
//			String totalPrice = fnGetAttribute(result, "item", "category");
//			System.out.println("\n���"+ totalPrice);
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
       
           
           /*
            * POP   ����Ȯ��    %
            * PTY   ��������   �ڵ尪
            * R06   6�ð� ������   ���� (1 mm)
            * REH   ����    %
            * S06   6�ð� ������   ����(1 cm)
            * SKY   �ϴû���   �ڵ尪
            * T3H   3�ð� ���    ��
            * TMN   ��ħ �������    ��
            * TMX   �� �ְ���    ��
            * UUU   ǳ��(��������)    m/s
            * VVV   ǳ��(���ϼ���)    m/s
            */

      
      
//   }
//
//
//
//public String fnGetAttribute(String sXmlData, String sNodeName, String sAttribute) throws Exception{
//    DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
//    DocumentBuilder builder;
//    org.w3c.dom.Document doc;
//    String rAttribute = "";
//    try {
//        // XML ���� �Ľ�
//        InputSource is = new InputSource(new StringReader(sXmlData));
//        builder = factory.newDocumentBuilder();
//        doc = builder.parse(is);
//       
//        org.w3c.dom.Element root =  doc.getDocumentElement();  //Get Root Node
//        NodeList childeren = root.getChildNodes(); // �ڽ� ��� ��� get
//       
//        for(int i = 0; i < childeren.getLength(); i++){
//            Node node = childeren.item(i);
//            if(node.getNodeType() == Node.ELEMENT_NODE && sNodeName.equals(node.getNodeName())) {
//                Element ele = (Element)node;
//                rAttribute = ((org.w3c.dom.Element) ele).getAttribute(sAttribute);
//            }
//        }
//       
//    } catch (Exception e) {
//        e.printStackTrace();
//        throw new Exception();
//    }
//    return rAttribute;
}

}








