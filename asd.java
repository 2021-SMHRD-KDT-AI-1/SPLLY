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
      
      //오늘 날자 받는 함수 
       long systemTime = System.currentTimeMillis();

         
         SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMdd ", Locale.KOREA);      
         String dTime = formatter.format(systemTime);   
         //스플릿 해서 - 제거 
         String[] str =  dTime.split("-");      
         String str2 = "";

         
         
         for(int i =0; i< str.length; i++) {
      //      System.out.print(str[i]);
            str2 += str[i];
            str2 = str2.replaceAll(" ", "");
         
         
         }
      
      String apiUrl = "http://apis.data.go.kr/1360000/VilageFcstInfoService/getVilageFcst";
         // 홈페이지에서 받은 키
         String serviceKey = "dji8ijRhG7jPHWzskJYswLPTxNia1VySljS9bAguvLozhy5b9CRCalaZ%2BJIU647gp%2BzEyVF%2Bbv%2FGQukkiBk6qQ%3D%3D";
         String nx = "59";   //위도
         String ny = "74";   //경도
         String baseDate = str2;   //조회하고싶은 날짜
         String baseTime = "1100";   //조회하고싶은 시간
         String type = "JSON";   //타입 xml, json 등등 ..
         
         
           StringBuilder urlBuilder = new StringBuilder(apiUrl);
           urlBuilder.append("?" + URLEncoder.encode("ServiceKey","UTF-8") + "="+serviceKey);
           urlBuilder.append("&" + URLEncoder.encode("nx","UTF-8") + "=" + URLEncoder.encode(nx, "UTF-8")); //경도
           urlBuilder.append("&" + URLEncoder.encode("ny","UTF-8") + "=" + URLEncoder.encode(ny, "UTF-8")); //위도
           urlBuilder.append("&" + URLEncoder.encode("base_date","UTF-8") + "=" + URLEncoder.encode(baseDate, "UTF-8")); /* 조회하고싶은 날짜*/
           urlBuilder.append("&" + URLEncoder.encode("base_time","UTF-8") + "=" + URLEncoder.encode(baseTime, "UTF-8")); /* 조회하고싶은 시간 AM 02시부터 3시간 단위 */
           urlBuilder.append("&" + URLEncoder.encode("_type","UTF-8") + "=" + URLEncoder.encode(type, "UTF-8"));   /* 타입 */
           
           /*
            * GET방식으로 전송해서 파라미터 받아오기
            */
           URL url = new URL(urlBuilder.toString());
           //어떻게 넘어가는지 확인하고 싶으면 아래 출력분 주석 해제
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
           
           // 변수 wanted ->
           //강수형태(PTY) 코드 : 없음(0), 비(1), 비/눈(2), 눈(3), 소나기(4), 빗방울(5), 빗방울/눈날림(6), 눈날림(7)
           
           
           System.out.print(wanted);
           
           
           
        // 문자열을 JSON으로 파싱합니다. 마지막 배열형태로 저장된 데이터까지 파싱 고고고고고곡 조져조져 
        // 파싱 가잣 ~! 
           
          
//         // XML
//           try {
//			String totalPrice = fnGetAttribute(result, "item", "category");
//			System.out.println("\n결과"+ totalPrice);
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
       
           
           /*
            * POP   강수확률    %
            * PTY   강수형태   코드값
            * R06   6시간 강수량   범주 (1 mm)
            * REH   습도    %
            * S06   6시간 신적설   범주(1 cm)
            * SKY   하늘상태   코드값
            * T3H   3시간 기온    ℃
            * TMN   아침 최저기온    ℃
            * TMX   낮 최고기온    ℃
            * UUU   풍속(동서성분)    m/s
            * VVV   풍속(남북성분)    m/s
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
//        // XML 문서 파싱
//        InputSource is = new InputSource(new StringReader(sXmlData));
//        builder = factory.newDocumentBuilder();
//        doc = builder.parse(is);
//       
//        org.w3c.dom.Element root =  doc.getDocumentElement();  //Get Root Node
//        NodeList childeren = root.getChildNodes(); // 자식 노드 목록 get
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








