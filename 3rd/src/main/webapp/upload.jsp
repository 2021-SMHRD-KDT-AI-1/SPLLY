<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<style>
		a,abbr,acronym,address,applet,article,aside,audio,b,big,blockquote,body,canvas,caption,center,cite,code,dd,del,details,dfn,div,dl,dt,em,embed,fieldset,figcaption,figure,footer,form,h1,h2,h3,h4,h5,h6,header,hgroup,html,i,iframe,img,ins,kbd,label,legend,li,mark,menu,nav,object,ol,output,p,pre,q,ruby,s,samp,section,small,span,strike,strong,sub,summary,sup,table,tbody,td,tfoot,th,thead,time,tr,tt,u,ul,var,video{margin:0;padding:0;border:0;font-size:100%;font:inherit;vertical-align:baseline}article,aside,details,figcaption,figure,footer,header,hgroup,menu,nav,section{display:block}body{line-height:1}ol,ul{list-style:none}blockquote,q{quotes:none}blockquote:after,blockquote:before,q:after,q:before{content:'';content:none}table{border-collapse:collapse;border-spacing:0}body{-webkit-text-size-adjust:none}mark{background-color:transparent;color:inherit}input::-moz-focus-inner{border:0;padding:0}input,select,textarea{-moz-appearance:none;-webkit-appearance:none;-ms-appearance:none;appearance:none}@-ms-viewport{width:device-width}body{-ms-overflow-style:scrollbar}@media screen and (max-width:480px){body,html{min-width:320px}}html{box-sizing:border-box}*,:after,:before{box-sizing:inherit}body{background-color:#1e252d}body.is-preload *,body.is-preload :after,body.is-preload :before{-moz-animation:none!important;-webkit-animation:none!important;-ms-animation:none!important;animation:none!important;-moz-transition:none!important;-webkit-transition:none!important;-ms-transition:none!important;transition:none!important}html{font-size:16pt}@media screen and (max-width:1680px){html{font-size:12pt}}@media screen and (max-width:1280px){html{font-size:11pt}}@media screen and (max-width:360px){html{font-size:10pt}}body{color:#212931}body,input,select,textarea{font-family:Merriweather,Georgia,serif;font-weight:300;font-size:1rem;line-height:2.375}a{-moz-transition:color .2s ease-in-out,background-color .2s ease-in-out,border-color .2s ease-in-out,box-shadow .2s ease-in-out;-webkit-transition:color .2s ease-in-out,background-color .2s ease-in-out,border-color .2s ease-in-out,box-shadow .2s ease-in-out;-ms-transition:color .2s ease-in-out,background-color .2s ease-in-out,border-color .2s ease-in-out,box-shadow .2s ease-in-out;transition:color .2s ease-in-out,background-color .2s ease-in-out,border-color .2s ease-in-out,box-shadow .2s ease-in-out;border-bottom:dotted 1px;text-decoration:none}a:hover{border-bottom-color:transparent}b,strong{font-weight:600}em,i{font-style:italic}p{text-align:justify;margin:0 0 2rem 0}h1,h2,h3,h4,h5,h6{font-family:"Source Sans Pro",Helvetica,sans-serif;font-weight:900;line-height:1.5;letter-spacing:.075em;text-transform:uppercase;margin:0 0 1rem 0}h1 a,h2 a,h3 a,h4 a,h5 a,h6 a{border-bottom:0;color:inherit;text-decoration:none}h1{font-size:4rem;line-height:1.1;margin:0 0 2rem 0}h2{font-size:1.75rem;line-height:1.3;margin:0 0 1.5rem 0}h3{font-size:1.25rem;margin:0 0 1.5rem 0}h4{font-size:1rem}h5{font-size:.9rem}h6{font-size:.8rem}sub{font-size:.8rem;position:relative;top:.5rem}sup{font-size:.8rem;position:relative;top:-.5rem}blockquote{border-left:solid 4px;font-style:italic;margin:0 0 2rem 0;padding:.5rem 0 .5rem 2rem}code{border:solid 2px;font-family:"Courier New",monospace;font-size:.9rem;margin:0 .25rem;padding:.25rem .65rem}pre{-webkit-overflow-scrolling:touch;font-family:"Courier New",monospace;font-size:.9rem;margin:0 0 2rem 0}pre code{display:block;line-height:1.75;padding:1rem 1.5rem;overflow-x:auto}hr{border:0;border-bottom:solid 2px;margin:3rem 0}hr.major{margin:5rem 0}.align-left{text-align:left}.align-center{text-align:center}.align-right{text-align:right}input,select,textarea{color:#212931}a{color:#212931;border-bottom-color:rgba(33,41,49,.5)}a:hover{border-bottom-color:transparent;color:#18bfef!important}b,strong{color:#212931}h1,h2,h3,h4,h5,h6{color:#212931}blockquote{border-left-color:#eee}code{background:rgba(220,220,220,.25);border-color:#eee}hr{border-bottom-color:#eee}.row{display:flex;flex-wrap:wrap;box-sizing:border-box;align-items:stretch}.row>*{box-sizing:border-box}.row.gtr-uniform>*>:last-child{margin-bottom:0}.row.aln-left{justify-content:flex-start}.row.aln-center{justify-content:center}.row.aln-right{justify-content:flex-end}.row.aln-top{align-items:flex-start}.row.aln-middle{align-items:center}.row.aln-bottom{align-items:flex-end}.row>.imp{order:-1}.row>.col-1{width:8.33333%}.row>.off-1{margin-left:8.33333%}.row>.col-2{width:16.66667%}.row>.off-2{margin-left:16.66667%}.row>.col-3{width:25%}.row>.off-3{margin-left:25%}.row>.col-4{width:33.33333%}.row>.off-4{margin-left:33.33333%}.row>.col-5{width:41.66667%}.row>.off-5{margin-left:41.66667%}.row>.col-6{width:50%}.row>.off-6{margin-left:50%}.row>.col-7{width:58.33333%}.row>.off-7{margin-left:58.33333%}.row>.col-8{width:66.66667%}.row>.off-8{margin-left:66.66667%}.row>.col-9{width:75%}.row>.off-9{margin-left:75%}.row>.col-10{width:83.33333%}.row>.off-10{margin-left:83.33333%}.row>.col-11{width:91.66667%}.row>.off-11{margin-left:91.66667%}.row>.col-12{width:100%}.row>.off-12{margin-left:100%}.row.gtr-0{margin-top:0;margin-left:0}.row.gtr-0>*{padding:0}.row.gtr-0.gtr-uniform{margin-top:0}.row.gtr-0.gtr-uniform>*{padding-top:0}.row.gtr-25{margin-top:0;margin-left:-.375rem}.row.gtr-25>*{padding:0 0 0 .375rem}.row.gtr-25.gtr-uniform{margin-top:-.375rem}.row.gtr-25.gtr-uniform>*{padding-top:.375rem}.row.gtr-50{margin-top:0;margin-left:-.75rem}.row.gtr-50>*{padding:0 0 0 .75rem}.row.gtr-50.gtr-uniform{margin-top:-.75rem}.row.gtr-50.gtr-uniform>*{padding-top:.75rem}.row{margin-top:0;margin-left:-1.5rem}.row>*{padding:0 0 0 1.5rem}.row.gtr-uniform{margin-top:-1.5rem}.row.gtr-uniform>*{padding-top:1.5rem}.row.gtr-150{margin-top:0;margin-left:-2.25rem}.row.gtr-150>*{padding:0 0 0 2.25rem}.row.gtr-150.gtr-uniform{margin-top:-2.25rem}.row.gtr-150.gtr-uniform>*{padding-top:2.25rem}.row.gtr-200{margin-top:0;margin-left:-3rem}.row.gtr-200>*{padding:0 0 0 3rem}.row.gtr-200.gtr-uniform{margin-top:-3rem}.row.gtr-200.gtr-uniform>*{padding-top:3rem}@media screen and (max-width:1680px){.row{display:flex;flex-wrap:wrap;box-sizing:border-box;align-items:stretch}.row>*{box-sizing:border-box}.row.gtr-uniform>*>:last-child{margin-bottom:0}.row.aln-left{justify-content:flex-start}.row.aln-center{justify-content:center}.row.aln-right{justify-content:flex-end}.row.aln-top{align-items:flex-start}.row.aln-middle{align-items:center}.row.aln-bottom{align-items:flex-end}.row>.imp-xlarge{order:-1}.row>.col-1-xlarge{width:8.33333%}.row>.off-1-xlarge{margin-left:8.33333%}.row>.col-2-xlarge{width:16.66667%}.row>.off-2-xlarge{margin-left:16.66667%}.row>.col-3-xlarge{width:25%}.row>.off-3-xlarge{margin-left:25%}.row>.col-4-xlarge{width:33.33333%}.row>.off-4-xlarge{margin-left:33.33333%}.row>.col-5-xlarge{width:41.66667%}.row>.off-5-xlarge{margin-left:41.66667%}.row>.col-6-xlarge{width:50%}.row>.off-6-xlarge{margin-left:50%}.row>.col-7-xlarge{width:58.33333%}.row>.off-7-xlarge{margin-left:58.33333%}.row>.col-8-xlarge{width:66.66667%}.row>.off-8-xlarge{margin-left:66.66667%}.row>.col-9-xlarge{width:75%}.row>.off-9-xlarge{margin-left:75%}.row>.col-10-xlarge{width:83.33333%}.row>.off-10-xlarge{margin-left:83.33333%}.row>.col-11-xlarge{width:91.66667%}.row>.off-11-xlarge{margin-left:91.66667%}.row>.col-12-xlarge{width:100%}.row>.off-12-xlarge{margin-left:100%}.row.gtr-0{margin-top:0;margin-left:0}.row.gtr-0>*{padding:0}.row.gtr-0.gtr-uniform{margin-top:0}.row.gtr-0.gtr-uniform>*{padding-top:0}.row.gtr-25{margin-top:0;margin-left:-.375rem}.row.gtr-25>*{padding:0 0 0 .375rem}.row.gtr-25.gtr-uniform{margin-top:-.375rem}.row.gtr-25.gtr-uniform>*{padding-top:.375rem}.row.gtr-50{margin-top:0;margin-left:-.75rem}.row.gtr-50>*{padding:0 0 0 .75rem}.row.gtr-50.gtr-uniform{margin-top:-.75rem}.row.gtr-50.gtr-uniform>*{padding-top:.75rem}.row{margin-top:0;margin-left:-1.5rem}.row>*{padding:0 0 0 1.5rem}.row.gtr-uniform{margin-top:-1.5rem}.row.gtr-uniform>*{padding-top:1.5rem}.row.gtr-150{margin-top:0;margin-left:-2.25rem}.row.gtr-150>*{padding:0 0 0 2.25rem}.row.gtr-150.gtr-uniform{margin-top:-2.25rem}.row.gtr-150.gtr-uniform>*{padding-top:2.25rem}.row.gtr-200{margin-top:0;margin-left:-3rem}.row.gtr-200>*{padding:0 0 0 3rem}.row.gtr-200.gtr-uniform{margin-top:-3rem}.row.gtr-200.gtr-uniform>*{padding-top:3rem}}@media screen and (max-width:1280px){.row{display:flex;flex-wrap:wrap;box-sizing:border-box;align-items:stretch}.row>*{box-sizing:border-box}.row.gtr-uniform>*>:last-child{margin-bottom:0}.row.aln-left{justify-content:flex-start}.row.aln-center{justify-content:center}.row.aln-right{justify-content:flex-end}.row.aln-top{align-items:flex-start}.row.aln-middle{align-items:center}.row.aln-bottom{align-items:flex-end}.row>.imp-large{order:-1}.row>.col-1-large{width:8.33333%}.row>.off-1-large{margin-left:8.33333%}.row>.col-2-large{width:16.66667%}.row>.off-2-large{margin-left:16.66667%}.row>.col-3-large{width:25%}.row>.off-3-large{margin-left:25%}.row>.col-4-large{width:33.33333%}.row>.off-4-large{margin-left:33.33333%}.row>.col-5-large{width:41.66667%}.row>.off-5-large{margin-left:41.66667%}.row>.col-6-large{width:50%}.row>.off-6-large{margin-left:50%}.row>.col-7-large{width:58.33333%}.row>.off-7-large{margin-left:58.33333%}.row>.col-8-large{width:66.66667%}.row>.off-8-large{margin-left:66.66667%}.row>.col-9-large{width:75%}.row>.off-9-large{margin-left:75%}.row>.col-10-large{width:83.33333%}.row>.off-10-large{margin-left:83.33333%}.row>.col-11-large{width:91.66667%}.row>.off-11-large{margin-left:91.66667%}.row>.col-12-large{width:100%}.row>.off-12-large{margin-left:100%}.row.gtr-0{margin-top:0;margin-left:0}.row.gtr-0>*{padding:0}.row.gtr-0.gtr-uniform{margin-top:0}.row.gtr-0.gtr-uniform>*{padding-top:0}.row.gtr-25{margin-top:0;margin-left:-.375rem}.row.gtr-25>*{padding:0 0 0 .375rem}.row.gtr-25.gtr-uniform{margin-top:-.375rem}.row.gtr-25.gtr-uniform>*{padding-top:.375rem}.row.gtr-50{margin-top:0;margin-left:-.75rem}.row.gtr-50>*{padding:0 0 0 .75rem}.row.gtr-50.gtr-uniform{margin-top:-.75rem}.row.gtr-50.gtr-uniform>*{padding-top:.75rem}.row{margin-top:0;margin-left:-1.5rem}.row>*{padding:0 0 0 1.5rem}.row.gtr-uniform{margin-top:-1.5rem}.row.gtr-uniform>*{padding-top:1.5rem}.row.gtr-150{margin-top:0;margin-left:-2.25rem}.row.gtr-150>*{padding:0 0 0 2.25rem}.row.gtr-150.gtr-uniform{margin-top:-2.25rem}.row.gtr-150.gtr-uniform>*{padding-top:2.25rem}.row.gtr-200{margin-top:0;margin-left:-3rem}.row.gtr-200>*{padding:0 0 0 3rem}.row.gtr-200.gtr-uniform{margin-top:-3rem}.row.gtr-200.gtr-uniform>*{padding-top:3rem}}@media screen and (max-width:980px){.row{display:flex;flex-wrap:wrap;box-sizing:border-box;align-items:stretch}.row>*{box-sizing:border-box}.row.gtr-uniform>*>:last-child{margin-bottom:0}.row.aln-left{justify-content:flex-start}.row.aln-center{justify-content:center}.row.aln-right{justify-content:flex-end}.row.aln-top{align-items:flex-start}.row.aln-middle{align-items:center}.row.aln-bottom{align-items:flex-end}.row>.imp-medium{order:-1}.row>.col-1-medium{width:8.33333%}.row>.off-1-medium{margin-left:8.33333%}.row>.col-2-medium{width:16.66667%}.row>.off-2-medium{margin-left:16.66667%}.row>.col-3-medium{width:25%}.row>.off-3-medium{margin-left:25%}.row>.col-4-medium{width:33.33333%}.row>.off-4-medium{margin-left:33.33333%}.row>.col-5-medium{width:41.66667%}.row>.off-5-medium{margin-left:41.66667%}.row>.col-6-medium{width:50%}.row>.off-6-medium{margin-left:50%}.row>.col-7-medium{width:58.33333%}.row>.off-7-medium{margin-left:58.33333%}.row>.col-8-medium{width:66.66667%}.row>.off-8-medium{margin-left:66.66667%}.row>.col-9-medium{width:75%}.row>.off-9-medium{margin-left:75%}.row>.col-10-medium{width:83.33333%}.row>.off-10-medium{margin-left:83.33333%}.row>.col-11-medium{width:91.66667%}.row>.off-11-medium{margin-left:91.66667%}.row>.col-12-medium{width:100%}.row>.off-12-medium{margin-left:100%}.row.gtr-0{margin-top:0;margin-left:0}.row.gtr-0>*{padding:0}.row.gtr-0.gtr-uniform{margin-top:0}.row.gtr-0.gtr-uniform>*{padding-top:0}.row.gtr-25{margin-top:0;margin-left:-.375rem}.row.gtr-25>*{padding:0 0 0 .375rem}.row.gtr-25.gtr-uniform{margin-top:-.375rem}.row.gtr-25.gtr-uniform>*{padding-top:.375rem}.row.gtr-50{margin-top:0;margin-left:-.75rem}.row.gtr-50>*{padding:0 0 0 .75rem}.row.gtr-50.gtr-uniform{margin-top:-.75rem}.row.gtr-50.gtr-uniform>*{padding-top:.75rem}.row{margin-top:0;margin-left:-1.5rem}.row>*{padding:0 0 0 1.5rem}.row.gtr-uniform{margin-top:-1.5rem}.row.gtr-uniform>*{padding-top:1.5rem}.row.gtr-150{margin-top:0;margin-left:-2.25rem}.row.gtr-150>*{padding:0 0 0 2.25rem}.row.gtr-150.gtr-uniform{margin-top:-2.25rem}.row.gtr-150.gtr-uniform>*{padding-top:2.25rem}.row.gtr-200{margin-top:0;margin-left:-3rem}.row.gtr-200>*{padding:0 0 0 3rem}.row.gtr-200.gtr-uniform{margin-top:-3rem}.row.gtr-200.gtr-uniform>*{padding-top:3rem}}@media screen and (max-width:736px){.row{display:flex;flex-wrap:wrap;box-sizing:border-box;align-items:stretch}.row>*{box-sizing:border-box}.row.gtr-uniform>*>:last-child{margin-bottom:0}.row.aln-left{justify-content:flex-start}.row.aln-center{justify-content:center}.row.aln-right{justify-content:flex-end}.row.aln-top{align-items:flex-start}.row.aln-middle{align-items:center}.row.aln-bottom{align-items:flex-end}.row>.imp-small{order:-1}.row>.col-1-small{width:8.33333%}.row>.off-1-small{margin-left:8.33333%}.row>.col-2-small{width:16.66667%}.row>.off-2-small{margin-left:16.66667%}.row>.col-3-small{width:25%}.row>.off-3-small{margin-left:25%}.row>.col-4-small{width:33.33333%}.row>.off-4-small{margin-left:33.33333%}.row>.col-5-small{width:41.66667%}.row>.off-5-small{margin-left:41.66667%}.row>.col-6-small{width:50%}.row>.off-6-small{margin-left:50%}.row>.col-7-small{width:58.33333%}.row>.off-7-small{margin-left:58.33333%}.row>.col-8-small{width:66.66667%}.row>.off-8-small{margin-left:66.66667%}.row>.col-9-small{width:75%}.row>.off-9-small{margin-left:75%}.row>.col-10-small{width:83.33333%}.row>.off-10-small{margin-left:83.33333%}.row>.col-11-small{width:91.66667%}.row>.off-11-small{margin-left:91.66667%}.row>.col-12-small{width:100%}.row>.off-12-small{margin-left:100%}.row.gtr-0{margin-top:0;margin-left:0}.row.gtr-0>*{padding:0}.row.gtr-0.gtr-uniform{margin-top:0}.row.gtr-0.gtr-uniform>*{padding-top:0}.row.gtr-25{margin-top:0;margin-left:-.375rem}.row.gtr-25>*{padding:0 0 0 .375rem}.row.gtr-25.gtr-uniform{margin-top:-.375rem}.row.gtr-25.gtr-uniform>*{padding-top:.375rem}.row.gtr-50{margin-top:0;margin-left:-.75rem}.row.gtr-50>*{padding:0 0 0 .75rem}.row.gtr-50.gtr-uniform{margin-top:-.75rem}.row.gtr-50.gtr-uniform>*{padding-top:.75rem}.row{margin-top:0;margin-left:-1.5rem}.row>*{padding:0 0 0 1.5rem}.row.gtr-uniform{margin-top:-1.5rem}.row.gtr-uniform>*{padding-top:1.5rem}.row.gtr-150{margin-top:0;margin-left:-2.25rem}.row.gtr-150>*{padding:0 0 0 2.25rem}.row.gtr-150.gtr-uniform{margin-top:-2.25rem}.row.gtr-150.gtr-uniform>*{padding-top:2.25rem}.row.gtr-200{margin-top:0;margin-left:-3rem}.row.gtr-200>*{padding:0 0 0 3rem}.row.gtr-200.gtr-uniform{margin-top:-3rem}.row.gtr-200.gtr-uniform>*{padding-top:3rem}}@media screen and (max-width:480px){.row{display:flex;flex-wrap:wrap;box-sizing:border-box;align-items:stretch}.row>*{box-sizing:border-box}.row.gtr-uniform>*>:last-child{margin-bottom:0}.row.aln-left{justify-content:flex-start}.row.aln-center{justify-content:center}.row.aln-right{justify-content:flex-end}.row.aln-top{align-items:flex-start}.row.aln-middle{align-items:center}.row.aln-bottom{align-items:flex-end}.row>.imp-xsmall{order:-1}.row>.col-1-xsmall{width:8.33333%}.row>.off-1-xsmall{margin-left:8.33333%}.row>.col-2-xsmall{width:16.66667%}.row>.off-2-xsmall{margin-left:16.66667%}.row>.col-3-xsmall{width:25%}.row>.off-3-xsmall{margin-left:25%}.row>.col-4-xsmall{width:33.33333%}.row>.off-4-xsmall{margin-left:33.33333%}.row>.col-5-xsmall{width:41.66667%}.row>.off-5-xsmall{margin-left:41.66667%}.row>.col-6-xsmall{width:50%}.row>.off-6-xsmall{margin-left:50%}.row>.col-7-xsmall{width:58.33333%}.row>.off-7-xsmall{margin-left:58.33333%}.row>.col-8-xsmall{width:66.66667%}.row>.off-8-xsmall{margin-left:66.66667%}.row>.col-9-xsmall{width:75%}.row>.off-9-xsmall{margin-left:75%}.row>.col-10-xsmall{width:83.33333%}.row>.off-10-xsmall{margin-left:83.33333%}.row>.col-11-xsmall{width:91.66667%}.row>.off-11-xsmall{margin-left:91.66667%}.row>.col-12-xsmall{width:100%}.row>.off-12-xsmall{margin-left:100%}.row.gtr-0{margin-top:0;margin-left:0}.row.gtr-0>*{padding:0}.row.gtr-0.gtr-uniform{margin-top:0}.row.gtr-0.gtr-uniform>*{padding-top:0}.row.gtr-25{margin-top:0;margin-left:-.375rem}.row.gtr-25>*{padding:0 0 0 .375rem}.row.gtr-25.gtr-uniform{margin-top:-.375rem}.row.gtr-25.gtr-uniform>*{padding-top:.375rem}.row.gtr-50{margin-top:0;margin-left:-.75rem}.row.gtr-50>*{padding:0 0 0 .75rem}.row.gtr-50.gtr-uniform{margin-top:-.75rem}.row.gtr-50.gtr-uniform>*{padding-top:.75rem}.row{margin-top:0;margin-left:-1.5rem}.row>*{padding:0 0 0 1.5rem}.row.gtr-uniform{margin-top:-1.5rem}.row.gtr-uniform>*{padding-top:1.5rem}.row.gtr-150{margin-top:0;margin-left:-2.25rem}.row.gtr-150>*{padding:0 0 0 2.25rem}.row.gtr-150.gtr-uniform{margin-top:-2.25rem}.row.gtr-150.gtr-uniform>*{padding-top:2.25rem}.row.gtr-200{margin-top:0;margin-left:-3rem}.row.gtr-200>*{padding:0 0 0 3rem}.row.gtr-200.gtr-uniform{margin-top:-3rem}.row.gtr-200.gtr-uniform>*{padding-top:3rem}}@media screen and (max-width:360px){.row{display:flex;flex-wrap:wrap;box-sizing:border-box;align-items:stretch}.row>*{box-sizing:border-box}.row.gtr-uniform>*>:last-child{margin-bottom:0}.row.aln-left{justify-content:flex-start}.row.aln-center{justify-content:center}.row.aln-right{justify-content:flex-end}.row.aln-top{align-items:flex-start}.row.aln-middle{align-items:center}.row.aln-bottom{align-items:flex-end}.row>.imp-xxsmall{order:-1}.row>.col-1-xxsmall{width:8.33333%}.row>.off-1-xxsmall{margin-left:8.33333%}.row>.col-2-xxsmall{width:16.66667%}.row>.off-2-xxsmall{margin-left:16.66667%}.row>.col-3-xxsmall{width:25%}.row>.off-3-xxsmall{margin-left:25%}.row>.col-4-xxsmall{width:33.33333%}.row>.off-4-xxsmall{margin-left:33.33333%}.row>.col-5-xxsmall{width:41.66667%}.row>.off-5-xxsmall{margin-left:41.66667%}.row>.col-6-xxsmall{width:50%}.row>.off-6-xxsmall{margin-left:50%}.row>.col-7-xxsmall{width:58.33333%}.row>.off-7-xxsmall{margin-left:58.33333%}.row>.col-8-xxsmall{width:66.66667%}.row>.off-8-xxsmall{margin-left:66.66667%}.row>.col-9-xxsmall{width:75%}.row>.off-9-xxsmall{margin-left:75%}.row>.col-10-xxsmall{width:83.33333%}.row>.off-10-xxsmall{margin-left:83.33333%}.row>.col-11-xxsmall{width:91.66667%}.row>.off-11-xxsmall{margin-left:91.66667%}.row>.col-12-xxsmall{width:100%}.row>.off-12-xxsmall{margin-left:100%}.row.gtr-0{margin-top:0;margin-left:0}.row.gtr-0>*{padding:0}.row.gtr-0.gtr-uniform{margin-top:0}.row.gtr-0.gtr-uniform>*{padding-top:0}.row.gtr-25{margin-top:0;margin-left:-.375rem}.row.gtr-25>*{padding:0 0 0 .375rem}.row.gtr-25.gtr-uniform{margin-top:-.375rem}.row.gtr-25.gtr-uniform>*{padding-top:.375rem}.row.gtr-50{margin-top:0;margin-left:-.75rem}.row.gtr-50>*{padding:0 0 0 .75rem}.row.gtr-50.gtr-uniform{margin-top:-.75rem}.row.gtr-50.gtr-uniform>*{padding-top:.75rem}.row{margin-top:0;margin-left:-1.5rem}.row>*{padding:0 0 0 1.5rem}.row.gtr-uniform{margin-top:-1.5rem}.row.gtr-uniform>*{padding-top:1.5rem}.row.gtr-150{margin-top:0;margin-left:-2.25rem}.row.gtr-150>*{padding:0 0 0 2.25rem}.row.gtr-150.gtr-uniform{margin-top:-2.25rem}.row.gtr-150.gtr-uniform>*{padding-top:2.25rem}.row.gtr-200{margin-top:0;margin-left:-3rem}.row.gtr-200>*{padding:0 0 0 3rem}.row.gtr-200.gtr-uniform{margin-top:-3rem}.row.gtr-200.gtr-uniform>*{padding-top:3rem}}.box{border:solid 2px;margin-bottom:2rem;padding:1.5rem}.box>:last-child,.box>:last-child>:last-child,.box>:last-child>:last-child>:last-child{margin-bottom:0}.box.alt{border:0;border-radius:0;padding:0}.box{border-color:#eee}.button,button,input[type=button],input[type=reset],input[type=submit]{-moz-appearance:none;-webkit-appearance:none;-ms-appearance:none;appearance:none;-moz-transition:background-color .2s ease-in-out,box-shadow .2s ease-in-out,color .2s ease-in-out;-webkit-transition:background-color .2s ease-in-out,box-shadow .2s ease-in-out,color .2s ease-in-out;-ms-transition:background-color .2s ease-in-out,box-shadow .2s ease-in-out,color .2s ease-in-out;transition:background-color .2s ease-in-out,box-shadow .2s ease-in-out,color .2s ease-in-out;border:0;border-radius:0;cursor:pointer;display:inline-block;font-family:"Source Sans Pro",Helvetica,sans-serif;font-size:.8rem;font-weight:900;letter-spacing:.075em;height:3rem;line-height:3rem;padding:0 2rem;text-align:center;text-decoration:none;text-transform:uppercase;white-space:nowrap}.button.icon:before,button.icon:before,input[type=button].icon:before,input[type=reset].icon:before,input[type=submit].icon:before{margin-right:.5rem}.button.icon.solo,button.icon.solo,input[type=button].icon.solo,input[type=reset].icon.solo,input[type=submit].icon.solo{position:relative;width:4rem;height:4rem;line-height:4rem;border-radius:4rem;text-indent:4rem;overflow:hidden;padding:0;white-space:nowrap}.button.icon.solo:before,button.icon.solo:before,input[type=button].icon.solo:before,input[type=reset].icon.solo:before,input[type=submit].icon.solo:before{position:absolute;display:block;top:0;left:0;width:inherit;height:inherit;line-height:inherit;font-size:1.25rem;margin-right:0;text-align:center;text-indent:0}.button.fit,button.fit,input[type=button].fit,input[type=reset].fit,input[type=submit].fit{width:100%}.button.small,button.small,input[type=button].small,input[type=reset].small,input[type=submit].small{font-size:.7rem;height:2.5rem;line-height:2.5rem;padding:0 1.5rem}.button.large,button.large,input[type=button].large,input[type=reset].large,input[type=submit].large{font-size:.9rem;height:3.5rem;line-height:3.5rem;padding:0 2.75rem}@media screen and (max-width:980px){.button,button,input[type=button],input[type=reset],input[type=submit]{font-size:.9rem;height:3.25rem;line-height:3.25rem}.button.large,button.large,input[type=button].large,input[type=reset].large,input[type=submit].large{font-size:1rem;height:3.75rem;line-height:3.75rem}}.button.disabled,.button:disabled,button.disabled,button:disabled,input[type=button].disabled,input[type=button]:disabled,input[type=reset].disabled,input[type=reset]:disabled,input[type=submit].disabled,input[type=submit]:disabled{pointer-events:none;opacity:.25}.button,button,input[type=button],input[type=reset],input[type=submit]{background-color:transparent;box-shadow:inset 0 0 0 2px #212931;color:#212931!important}.button:hover,button:hover,input[type=button]:hover,input[type=reset]:hover,input[type=submit]:hover{box-shadow:inset 0 0 0 2px #18bfef;color:#18bfef!important}.button.primary,button.primary,input[type=button].primary,input[type=reset].primary,input[type=submit].primary{background-color:#212931;box-shadow:none;color:#fff!important}.button.primary:hover,button.primary:hover,input[type=button].primary:hover,input[type=reset].primary:hover,input[type=submit].primary:hover{background-color:#18bfef}form{margin:0 0 2rem 0}form>:last-child{margin-bottom:0}form>.fields{display:-moz-flex;display:-webkit-flex;display:-ms-flex;display:flex;-moz-flex-wrap:wrap;-webkit-flex-wrap:wrap;-ms-flex-wrap:wrap;flex-wrap:wrap;width:calc(100% + 3rem);margin:-1.5rem 0 2rem -1.5rem}form>.fields>.field{-moz-flex-grow:0;-webkit-flex-grow:0;-ms-flex-grow:0;flex-grow:0;-moz-flex-shrink:0;-webkit-flex-shrink:0;-ms-flex-shrink:0;flex-shrink:0;padding:1.5rem 0 0 1.5rem;width:calc(100% - 1.5rem)}form>.fields>.field.half{width:calc(50% - .75rem)}form>.fields>.field.third{width:calc(100%/3 - .5rem)}form>.fields>.field.quarter{width:calc(25% - .375rem)}@media screen and (max-width:480px){form>.fields{width:calc(100% + 3rem);margin:-1.5rem 0 2rem -1.5rem}form>.fields>.field{padding:1.5rem 0 0 1.5rem;width:calc(100% - 1.5rem)}form>.fields>.field.half{width:calc(100% - 1.5rem)}form>.fields>.field.third{width:calc(100% - 1.5rem)}form>.fields>.field.quarter{width:calc(100% - 1.5rem)}}label{display:block;font-family:"Source Sans Pro",Helvetica,sans-serif;font-weight:900;line-height:1.5;letter-spacing:.075em;font-size:.8rem;text-transform:uppercase;margin:0 0 .75rem 0}@media screen and (max-width:980px){label{font-size:.9rem}}input[type=email],input[type=password],input[type=text],select,textarea{-moz-appearance:none;-webkit-appearance:none;-ms-appearance:none;appearance:none;background:0 0;border-radius:0;border:solid 2px;color:inherit;display:block;outline:0;padding:0 1rem;text-decoration:none;width:100%}input[type=email]:invalid,input[type=password]:invalid,input[type=text]:invalid,select:invalid,textarea:invalid{box-shadow:none}select{background-size:1.25rem;background-repeat:no-repeat;background-position:calc(100% - 1rem) center;height:3rem;padding-right:3rem;text-overflow:ellipsis}select:focus::-ms-value{background-color:transparent}select::-ms-expand{display:none}input[type=email],input[type=password],input[type=text],select{height:3rem}textarea{padding:.75rem 1rem}input[type=checkbox],input[type=radio]{-moz-appearance:none;-webkit-appearance:none;-ms-appearance:none;appearance:none;display:block;float:left;margin-right:-2rem;opacity:0;width:1rem;z-index:-1}input[type=checkbox]+label,input[type=radio]+label{text-decoration:none;cursor:pointer;display:inline-block;font-size:1rem;letter-spacing:0;font-family:Merriweather,Georgia,serif;text-transform:none;font-weight:300;padding-left:2.8rem;padding-right:1rem;position:relative}input[type=checkbox]+label:before,input[type=radio]+label:before{-moz-osx-font-smoothing:grayscale;-webkit-font-smoothing:antialiased;display:inline-block;font-style:normal;font-variant:normal;text-rendering:auto;line-height:1;text-transform:none!important;font-family:'Font Awesome 5 Free';font-weight:900}input[type=checkbox]+label:before,input[type=radio]+label:before{border-radius:0;border:solid 2px;content:'';display:inline-block;font-size:.8rem;height:1.8rem;left:0;line-height:1.65rem;position:absolute;text-align:center;top:-.125rem;width:1.8rem}input[type=checkbox]:checked+label:before,input[type=radio]:checked+label:before{content:'\f00c'}input[type=checkbox]+label:before{border-radius:0}input[type=radio]+label:before{border-radius:100%}::-webkit-input-placeholder{opacity:1}:-moz-placeholder{opacity:1}::-moz-placeholder{opacity:1}:-ms-input-placeholder{opacity:1}label{color:#212931}input[type=email],input[type=password],input[type=text],select,textarea{border-color:#eee}input[type=email]:focus,input[type=password]:focus,input[type=text]:focus,select:focus,textarea:focus{border-color:#18bfef}select{background-image:url("data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='40' height='40' preserveAspectRatio='none' viewBox='0 0 40 40'%3E%3Cpath d='M9.4,12.3l10.4,10.4l10.4-10.4c0.2-0.2,0.5-0.4,0.9-0.4c0.3,0,0.6,0.1,0.9,0.4l3.3,3.3c0.2,0.2,0.4,0.5,0.4,0.9 c0,0.4-0.1,0.6-0.4,0.9L20.7,31.9c-0.2,0.2-0.5,0.4-0.9,0.4c-0.3,0-0.6-0.1-0.9-0.4L4.3,17.3c-0.2-0.2-0.4-0.5-0.4-0.9 c0-0.4,0.1-0.6,0.4-0.9l3.3-3.3c0.2-0.2,0.5-0.4,0.9-0.4S9.1,12.1,9.4,12.3z' fill='%23eeeeee' /%3E%3C/svg%3E")}select option{background-color:#fff;color:#212931}.select-wrapper:before{color:#eee}input[type=checkbox]+label,input[type=radio]+label{color:#212931}input[type=checkbox]+label:before,input[type=radio]+label:before{border-color:#eee}input[type=checkbox]:checked+label:before,input[type=radio]:checked+label:before{background-color:#212931;border-color:#212931;color:#fff}input[type=checkbox]:focus+label:before,input[type=radio]:focus+label:before{border-color:#18bfef}::-webkit-input-placeholder{color:#909498!important}:-moz-placeholder{color:#909498!important}::-moz-placeholder{color:#909498!important}:-ms-input-placeholder{color:#909498!important}.formerize-placeholder{color:#909498!important}.icon{text-decoration:none;border-bottom:none;position:relative}.icon:before{-moz-osx-font-smoothing:grayscale;-webkit-font-smoothing:antialiased;display:inline-block;font-style:normal;font-variant:normal;text-rendering:auto;line-height:1;text-transform:none!important;font-family:'Font Awesome 5 Free';font-weight:400}.icon>.label{display:none}.icon:before{line-height:inherit}.icon.solid:before{font-weight:900}.icon.brands:before{font-family:'Font Awesome 5 Brands'}.image{border:0;display:inline-block;position:relative}.image img{display:block}.image.left,.image.right{max-width:40%}.image.left img,.image.right img{width:100%}.image.left{float:left;margin:0 2rem 2rem 0;top:.75rem}.image.right{float:right;margin:0 0 2rem 2rem;top:.75rem}.image.fit{display:block;margin:2.5rem 0;width:100%}.image.fit:first-child{margin-top:0}.image.fit img{width:100%}.image.main{display:block;margin:4rem 0;width:100%}.image.main:first-child{margin-top:0}.image.main img{width:100%}@media screen and (max-width:736px){.image.fit{margin:2rem 0}.image.main{margin:2rem 0}}a.image{overflow:hidden}a.image img{-moz-transition:-moz-transform .2s ease-out;-webkit-transition:-webkit-transform .2s ease-out;-ms-transition:-ms-transform .2s ease-out;transition:transform .2s ease-out}a.image:hover img{-moz-transform:scale(1.05);-webkit-transform:scale(1.05);-ms-transform:scale(1.05);transform:scale(1.05)}ul.actions{display:-moz-flex;display:-webkit-flex;display:-ms-flex;display:flex;cursor:default;list-style:none;margin-left:-1rem;padding-left:0}ul.actions li{padding:0 0 0 1rem;vertical-align:middle}ul.actions.special{-moz-justify-content:center;-webkit-justify-content:center;-ms-justify-content:center;justify-content:center;width:100%;margin-left:0}ul.actions.special li:first-child{padding-left:0}ul.actions.stacked{-moz-flex-direction:column;-webkit-flex-direction:column;-ms-flex-direction:column;flex-direction:column;margin-left:0}ul.actions.stacked li{padding:1.3rem 0 0 0}ul.actions.stacked li:first-child{padding-top:0}ul.actions.fit{width:calc(100% + 1rem)}ul.actions.fit li{-moz-flex-grow:1;-webkit-flex-grow:1;-ms-flex-grow:1;flex-grow:1;-moz-flex-shrink:1;-webkit-flex-shrink:1;-ms-flex-shrink:1;flex-shrink:1;width:100%}ul.actions.fit li>*{width:100%}ul.actions.fit.stacked{width:100%}@media screen and (max-width:480px){ul.actions:not(.fixed){-moz-flex-direction:column;-webkit-flex-direction:column;-ms-flex-direction:column;flex-direction:column;margin-left:0;width:100%!important}ul.actions:not(.fixed) li{-moz-flex-grow:1;-webkit-flex-grow:1;-ms-flex-grow:1;flex-grow:1;-moz-flex-shrink:1;-webkit-flex-shrink:1;-ms-flex-shrink:1;flex-shrink:1;padding:1rem 0 0 0;text-align:center;width:100%}ul.actions:not(.fixed) li>*{width:100%}ul.actions:not(.fixed) li:first-child{padding-top:0}ul.actions:not(.fixed) li .button,ul.actions:not(.fixed) li button,ul.actions:not(.fixed) li input[type=button],ul.actions:not(.fixed) li input[type=reset],ul.actions:not(.fixed) li input[type=submit]{width:100%}ul.actions:not(.fixed) li .button.icon:before,ul.actions:not(.fixed) li button.icon:before,ul.actions:not(.fixed) li input[type=button].icon:before,ul.actions:not(.fixed) li input[type=reset].icon:before,ul.actions:not(.fixed) li input[type=submit].icon:before{margin-left:-.5rem}}ul.icons{cursor:default;list-style:none;padding-left:0}ul.icons li{display:inline-block;padding:0 .5rem 0 0;vertical-align:middle}ul.icons li:last-child{padding-right:0}ul.icons li .icon:before{width:2.25rem;height:2.25rem;line-height:2.25rem;display:inline-block;text-align:center;border-radius:100%;font-size:1.25rem}ul.icons.alt li .icon:before{-moz-transition:color .2s ease-in-out,background-color .2s ease-in-out,border-color .2s ease-in-out,box-shadow .2s ease-in-out;-webkit-transition:color .2s ease-in-out,background-color .2s ease-in-out,border-color .2s ease-in-out,box-shadow .2s ease-in-out;-ms-transition:color .2s ease-in-out,background-color .2s ease-in-out,border-color .2s ease-in-out,box-shadow .2s ease-in-out;transition:color .2s ease-in-out,background-color .2s ease-in-out,border-color .2s ease-in-out,box-shadow .2s ease-in-out;font-size:1rem}ol{list-style:decimal;margin:0 0 2rem 0;padding-left:1.25rem}ol li{padding-left:.25rem}ul{list-style:disc;margin:0 0 2rem 0;padding-left:1rem}ul li{padding-left:.5rem}ul.divided{list-style:none;padding-left:0}ul.divided li{border-top:solid 1px;padding:.5rem 0}ul.divided li:first-child{border-top:0;padding-top:0}dl{margin:0 0 2rem 0}dl dt{display:block;font-weight:600;margin:0 0 1rem 0}dl dd{margin-left:2rem}ul.divided li{border-top-color:#eee}ul.icons li a.icon:hover:before{color:#18bfef}ul.icons.alt li .icon:before{box-shadow:inset 0 0 0 2px #eee}ul.icons.alt li a.icon:hover:before{box-shadow:inset 0 0 0 2px #18bfef}article.special,section.special{text-align:center}header{cursor:default}header>.date{display:block;font-size:.8rem;height:1;margin:0 0 1rem 0;position:relative}header>p{font-style:italic}header>h1+p{font-size:1.1rem;margin-top:-.5rem;line-height:2}header>h2+p{font-size:1rem;margin-top:-.75rem}header>h3+p{font-size:.9rem;margin-top:-.75rem}header>h4+p{font-size:.8rem;margin-top:-.75rem}header.major{margin:0 0 4rem 0;text-align:center}header.major>:last-child{margin-bottom:0}header.major>p{margin-top:0;text-align:center}header.major>.date{font-size:1rem;margin:0 0 4rem 0}header.major>.date:after,header.major>.date:before{content:'';display:block;position:absolute;top:50%;width:calc(50% - 6rem);border-top:solid 2px}header.major>.date:before{left:0}header.major>.date:after{right:0}@media screen and (max-width:980px){header br{display:none}}@media screen and (max-width:736px){header.major{margin:0 0 2rem 0}}header.major .date:after,header.major .date:before{border-top-color:#eee}.table-wrapper{-webkit-overflow-scrolling:touch;overflow-x:auto}table{margin:0 0 2rem 0;width:100%}table tbody tr{border:solid 1px;border-left:0;border-right:0}table td{padding:.75rem .75rem}table th{font-family:"Source Sans Pro",Helvetica,sans-serif;font-size:.8rem;font-weight:900;letter-spacing:.075em;line-height:1.5;padding:0 .75rem .75rem .75rem;text-align:left;text-transform:uppercase}@media screen and (max-width:980px){table th{font-size:.9rem}}table thead{border-bottom:solid 2px}table tfoot{border-top:solid 2px}table.alt{border-collapse:separate}table.alt tbody tr td{border:solid 1px;border-left-width:0;border-top-width:0}table.alt tbody tr td:first-child{border-left-width:1px}table.alt tbody tr:first-child td{border-top-width:1px}table.alt thead{border-bottom:0}table.alt tfoot{border-top:0}table tbody tr{border-color:#eee}table tbody tr:nth-child(2n+1){background-color:rgba(220,220,220,.25)}table th{color:#212931}table thead{border-bottom-color:#eee}table tfoot{border-top-color:#eee}table.alt tbody tr td{border-color:#eee}.pagination{display:-moz-inline-flex;display:-webkit-inline-flex;display:-ms-inline-flex;display:inline-flex;-moz-user-select:none;-webkit-user-select:none;-ms-user-select:none;user-select:none;cursor:default;list-style:none;margin:0 0 2rem 2px;padding:0}.pagination a,.pagination span{-moz-transition:background-color .2s ease-in-out,border-color .2s ease-in-out,box-shadow .2s ease-in-out,color .2s ease-in-out;-webkit-transition:background-color .2s ease-in-out,border-color .2s ease-in-out,box-shadow .2s ease-in-out,color .2s ease-in-out;-ms-transition:background-color .2s ease-in-out,border-color .2s ease-in-out,box-shadow .2s ease-in-out,color .2s ease-in-out;transition:background-color .2s ease-in-out,border-color .2s ease-in-out,box-shadow .2s ease-in-out,color .2s ease-in-out;border:solid 2px;display:inline-block;font-family:"Source Sans Pro",Helvetica,sans-serif;font-size:.8rem;font-weight:900;height:3rem;letter-spacing:.075em;line-height:calc(3rem - 4px);margin-left:-2px;min-width:3rem;position:relative;text-align:center;text-decoration:none;text-transform:uppercase}.pagination .next,.pagination .previous{text-decoration:none;padding:0 1.75rem}.pagination .next:before,.pagination .previous:before{-moz-osx-font-smoothing:grayscale;-webkit-font-smoothing:antialiased;display:inline-block;font-style:normal;font-variant:normal;text-rendering:auto;line-height:1;text-transform:none!important;font-family:'Font Awesome 5 Free';font-weight:900}.pagination .next:before,.pagination .previous:before{display:inline-block;color:inherit!important;line-height:inherit}.pagination .previous:before{content:'\f104';margin-right:.9375em}.pagination .next:before{content:'\f105';float:right;margin-left:.9375em}@media screen and (max-width:980px){.pagination a,.pagination span{font-size:.9rem}}@media screen and (max-width:480px){.pagination .extra,.pagination .page{display:none}}.pagination a,.pagination span{border-color:#eee}.pagination a{color:#212931!important}.pagination a:hover{color:#18bfef!important;border-color:#18bfef;z-index:1}.pagination a:hover+a,.pagination a:hover+span{border-left-color:#18bfef}.pagination a.active{background-color:#eee}.pagination span{color:#eee}#wrapper{-moz-transition:opacity .5s ease;-webkit-transition:opacity .5s ease;-ms-transition:opacity .5s ease;transition:opacity .5s ease;position:relative;z-index:1;overflow:hidden}#wrapper>.bg{position:absolute;top:0;left:0;width:100%;height:100%;background-color:#212931;background-image:url(../../images/overlay.png),linear-gradient(0deg,rgba(0,0,0,.1),rgba(0,0,0,.1)),url(../../images/bg.jpg);background-size:auto,auto,100% auto;background-position:center,center,top center;background-repeat:repeat,no-repeat,no-repeat;background-attachment:scroll,scroll,scroll;z-index:-1}#wrapper>.bg.fixed{position:fixed;width:100vw;height:100vh}#wrapper.fade-in:before{pointer-events:none;-moz-transition:opacity 1s ease-in-out;-webkit-transition:opacity 1s ease-in-out;-ms-transition:opacity 1s ease-in-out;transition:opacity 1s ease-in-out;-moz-transition-delay:.75s;-webkit-transition-delay:.75s;-ms-transition-delay:.75s;transition-delay:.75s;background:#1e252d;content:'';display:block;height:100%;left:0;opacity:0;position:fixed;top:0;width:100%}body.is-preload #wrapper.fade-in:before{opacity:1}@media screen and (orientation:portrait){#wrapper>.bg{background-size:auto,auto,auto 175%}}#intro{color:#fff;padding:8rem 4rem 6rem 4rem;-moz-align-items:center;-webkit-align-items:center;-ms-align-items:center;align-items:center;display:-moz-flex;display:-webkit-flex;display:-ms-flex;display:flex;-moz-flex-direction:column;-webkit-flex-direction:column;-ms-flex-direction:column;flex-direction:column;-moz-justify-content:-moz-flex-end;-webkit-justify-content:-webkit-flex-end;-ms-justify-content:-ms-flex-end;justify-content:flex-end;-moz-transition:opacity 1s ease,-moz-transform 1s ease;-webkit-transition:opacity 1s ease,-webkit-transform 1s ease;-ms-transition:opacity 1s ease,-ms-transform 1s ease;transition:opacity 1s ease,transform 1s ease;position:relative;cursor:default;text-align:center;z-index:1;min-height:100vh}#intro input,#intro select,#intro textarea{color:#fff}#intro a{color:#fff;border-bottom-color:rgba(255,255,255,.5)}#intro a:hover{border-bottom-color:transparent;color:#18bfef!important}#intro b,#intro strong{color:#fff}#intro h1,#intro h2,#intro h3,#intro h4,#intro h5,#intro h6{color:#fff}#intro blockquote{border-left-color:#fff}#intro code{background:rgba(255,255,255,.075);border-color:#fff}#intro hr{border-bottom-color:#fff}#intro .button,#intro button,#intro input[type=button],#intro input[type=reset],#intro input[type=submit]{background-color:transparent;box-shadow:inset 0 0 0 2px #fff;color:#fff!important}#intro .button:hover,#intro button:hover,#intro input[type=button]:hover,#intro input[type=reset]:hover,#intro input[type=submit]:hover{box-shadow:inset 0 0 0 2px #18bfef;color:#18bfef!important}#intro .button.primary,#intro button.primary,#intro input[type=button].primary,#intro input[type=reset].primary,#intro input[type=submit].primary{background-color:#fff;box-shadow:none;color:#1e252d!important}#intro .button.primary:hover,#intro button.primary:hover,#intro input[type=button].primary:hover,#intro input[type=reset].primary:hover,#intro input[type=submit].primary:hover{background-color:#18bfef}#intro h1{font-size:5rem;line-height:1}#intro p{font-size:1.25rem;font-style:italic;margin-top:-.25rem;text-align:center}#intro+#header{margin-top:-20rem}#intro+#header .logo{-moz-transform:translateY(2rem);-webkit-transform:translateY(2rem);-ms-transform:translateY(2rem);transform:translateY(2rem);opacity:0;visibility:hidden}#intro.hidden{pointer-events:none;-moz-transform:translateY(2rem);-webkit-transform:translateY(2rem);-ms-transform:translateY(2rem);transform:translateY(2rem);-moz-transition:opacity .5s ease,-moz-transform .5s ease,visibility .5s;-webkit-transition:opacity .5s ease,-webkit-transform .5s ease,visibility .5s;-ms-transition:opacity .5s ease,-ms-transform .5s ease,visibility .5s;transition:opacity .5s ease,transform .5s ease,visibility .5s;opacity:0;visibility:hidden}#intro.hidden+#header .logo{-moz-transform:translateY(0);-webkit-transform:translateY(0);-ms-transform:translateY(0);transform:translateY(0);opacity:1;visibility:visible}body.is-preload #intro{-moz-transform:translateY(2rem);-webkit-transform:translateY(2rem);-ms-transform:translateY(2rem);transform:translateY(2rem);opacity:0}body.is-preload #intro:not(.hidden)+#header+#nav{-moz-transform:translateY(4rem);-webkit-transform:translateY(4rem);-ms-transform:translateY(4rem);transform:translateY(4rem);opacity:0}@media screen and (max-width:980px){#intro{padding:4rem 4rem 2rem 4rem;min-height:90vh}#intro p br{display:none}#intro+#header{margin-top:-14rem}}@media screen and (max-width:736px){#intro{padding:3rem 2rem 1rem 2rem;min-height:80vh}#intro h1{font-size:3.25rem;line-height:1.1;margin-bottom:1rem}#intro p{font-size:1rem;margin-top:0}#intro .actions{display:none}}#header{color:#fff;-moz-align-items:center;-webkit-align-items:center;-ms-align-items:center;align-items:center;display:-moz-flex;display:-webkit-flex;display:-ms-flex;display:flex;-moz-flex-direction:column;-webkit-flex-direction:column;-ms-flex-direction:column;flex-direction:column;-moz-justify-content:-moz-flex-end;-webkit-justify-content:-webkit-flex-end;-ms-justify-content:-ms-flex-end;justify-content:flex-end;pointer-events:none;-moz-user-select:none;-webkit-user-select:none;-ms-user-select:none;user-select:none;height:20rem;padding-bottom:8rem;position:relative;text-align:center;z-index:2}#header input,#header select,#header textarea{color:#fff}#header a{color:#fff;border-bottom-color:rgba(255,255,255,.5)}#header a:hover{border-bottom-color:transparent;color:#18bfef!important}#header b,#header strong{color:#fff}#header h1,#header h2,#header h3,#header h4,#header h5,#header h6{color:#fff}#header blockquote{border-left-color:#fff}#header code{background:rgba(255,255,255,.075);border-color:#fff}#header hr{border-bottom-color:#fff}#header .logo{-moz-transition:border-color .2s ease-in-out,color .2s ease-in-out,opacity .5s ease,-moz-transform .5s ease,visibility .5s;-webkit-transition:border-color .2s ease-in-out,color .2s ease-in-out,opacity .5s ease,-webkit-transform .5s ease,visibility .5s;-ms-transition:border-color .2s ease-in-out,color .2s ease-in-out,opacity .5s ease,-ms-transform .5s ease,visibility .5s;transition:border-color .2s ease-in-out,color .2s ease-in-out,opacity .5s ease,transform .5s ease,visibility .5s;pointer-events:auto;border-style:solid;border-color:#fff;border-width:5px!important;font-family:"Source Sans Pro",Helvetica,sans-serif;font-size:2.25rem;font-weight:900;letter-spacing:.075em;line-height:1;padding:1rem 1.75rem;text-transform:uppercase;visibility:visible}#header .logo:hover{border-color:#18bfef!important;color:#18bfef!important}@media screen and (max-width:980px){#header{height:14rem;padding-bottom:4rem}}@media screen and (max-width:736px){#header{padding-bottom:3rem}#header .logo{font-size:1.75rem;border-width:3px!important}}#nav{color:#fff;display:-moz-flex;display:-webkit-flex;display:-ms-flex;display:flex;-moz-transition:-moz-transform 1s ease,opacity 1s ease;-webkit-transition:-webkit-transform 1s ease,opacity 1s ease;-ms-transition:-ms-transform 1s ease,opacity 1s ease;transition:transform 1s ease,opacity 1s ease;background:rgba(255,255,255,.175);height:4rem;line-height:4rem;margin:-4rem auto 0 auto;overflow:hidden;padding:0 2rem 0 0;position:relative;width:calc(100% - 4rem);max-width:72rem;z-index:2}#nav ul.divided li{border-top-color:#fff}#nav ul.icons li a.icon:hover:before{color:#18bfef}#nav ul.icons.alt li .icon:before{box-shadow:inset 0 0 0 2px #fff}#nav ul.icons.alt li a.icon:hover:before{box-shadow:inset 0 0 0 2px #18bfef}#nav input,#nav select,#nav textarea{color:#fff}#nav a{color:#fff;border-bottom-color:rgba(255,255,255,.5)}#nav a:hover{border-bottom-color:transparent;color:#18bfef!important}#nav b,#nav strong{color:#fff}#nav h1,#nav h2,#nav h3,#nav h4,#nav h5,#nav h6{color:#fff}#nav blockquote{border-left-color:#fff}#nav code{background:rgba(255,255,255,.075);border-color:#fff}#nav hr{border-bottom-color:#fff}#nav ul.links{display:-moz-flex;display:-webkit-flex;display:-ms-flex;display:flex;-moz-flex-grow:1;-webkit-flex-grow:1;-ms-flex-grow:1;flex-grow:1;-moz-flex-shrink:1;-webkit-flex-shrink:1;-ms-flex-shrink:1;flex-shrink:1;font-family:"Source Sans Pro",Helvetica,sans-serif;font-weight:900;letter-spacing:.075em;list-style:none;margin-bottom:0;padding-left:0;text-transform:uppercase}#nav ul.links li{display:block;padding-left:0}#nav ul.links li a{-moz-transition:background-color .2s ease-in-out,color .2s ease-in-out;-webkit-transition:background-color .2s ease-in-out,color .2s ease-in-out;-ms-transition:background-color .2s ease-in-out,color .2s ease-in-out;transition:background-color .2s ease-in-out,color .2s ease-in-out;display:block;font-size:.8rem;outline:0;padding:0 2rem}#nav ul.links li a:hover{color:inherit!important;background-color:rgba(255,255,255,.1)}#nav ul.links li.active{background-color:#fff}#nav ul.links li.active a{color:#1e252d}#nav ul.links li.active a:hover{color:#18bfef!important}#nav ul.icons{-moz-flex-grow:0;-webkit-flex-grow:0;-ms-flex-grow:0;flex-grow:0;-moz-flex-shrink:0;-webkit-flex-shrink:0;-ms-flex-shrink:0;flex-shrink:0;margin-bottom:0}@media screen and (max-width:980px){#nav{display:none}}#main{background-color:#fff;position:relative;margin:0 auto;width:calc(100% - 4rem);max-width:72rem;z-index:2}#main>*{padding:4rem 4rem 2rem 4rem;border-top:solid 2px #eee;margin:0}#main>:first-child{border-top:0}#main>footer{text-align:center}#main>.post{padding:8rem 8rem 6rem 8rem}#main>.post header.major>.date{margin-top:-2rem}#main>.post header.major h2,#main>.post header.major>h1{font-size:4rem;line-height:1.1;margin:0 0 2rem 0}#main>.post.featured{text-align:center}@media screen and (max-width:1280px){#main>.post{padding:6rem 4rem 4rem 4rem}}@media screen and (max-width:736px){#main>.post{padding:4rem 2rem 2rem 2rem}#main>.post header.major>.date{margin-top:-1rem;margin-bottom:2rem}#main>.post header.major h2,#main>.post header.major>h1{font-size:2.5rem;line-height:1.2;margin:0 0 1.5rem 0}}#main>.posts{display:-moz-flex;display:-webkit-flex;display:-ms-flex;display:flex;-moz-flex-wrap:wrap;-webkit-flex-wrap:wrap;-ms-flex-wrap:wrap;flex-wrap:wrap;-moz-align-items:-moz-stretch;-webkit-align-items:-webkit-stretch;-ms-align-items:-ms-stretch;align-items:stretch;text-align:center;width:100%;padding:0}#main>.posts>*{-moz-flex-shrink:1;-webkit-flex-shrink:1;-ms-flex-shrink:1;flex-shrink:1;-moz-flex-grow:0;-webkit-flex-grow:0;-ms-flex-grow:0;flex-grow:0}#main>.posts>*{width:50%}#main>.posts>*{padding:4rem;width:50%}#main>.posts>article{border-color:#eee;border-left-width:2px;border-style:solid;border-top-width:2px;text-align:center}#main>.posts>article>:last-child{margin-bottom:0}#main>.posts>article:nth-child(2n-1){border-left-width:0}#main>.posts>article:nth-child(-n+2){border-top-width:0}@media screen and (max-width:980px){#main>.posts>*{width:50%}#main>.posts>*{padding:2.5rem;width:50%}}@media screen and (max-width:736px){#main>.posts>*{width:100%}#main>.posts>*{padding:2rem;width:100%}#main>.posts>article:nth-child(2n-1){border-left-width:2px}#main>.posts>article:nth-child(-n+2){border-top-width:2px}#main>.posts>article:nth-child(n){border-left-width:0}#main>.posts>article:nth-child(-n+1){border-top-width:0}#main>.posts>article .image{max-width:25rem;margin-left:auto;margin-right:auto}}@media screen and (max-width:736px){#main>*{padding:2rem 2rem .1rem 2rem}}@media screen and (max-width:480px){#main{width:100%}}#footer{color:#717981;display:-moz-flex;display:-webkit-flex;display:-ms-flex;display:flex;background-color:#f5f5f5;color:#909498;cursor:default;position:relative;margin:0 auto;width:calc(100% - 4rem);max-width:72rem;z-index:2}#footer input,#footer select,#footer textarea{color:#717981}#footer a{color:#717981;border-bottom-color:rgba(113,121,129,.5)}#footer a:hover{border-bottom-color:transparent;color:#18bfef!important}#footer b,#footer strong{color:#717981}#footer h1,#footer h2,#footer h3,#footer h4,#footer h5,#footer h6{color:#717981}#footer blockquote{border-left-color:#e2e2e2}#footer code{background:rgba(220,220,220,.5);border-color:#e2e2e2}#footer hr{border-bottom-color:#e2e2e2}#footer .box{border-color:#e2e2e2}#footer .button,#footer button,#footer input[type=button],#footer input[type=reset],#footer input[type=submit]{background-color:transparent;box-shadow:inset 0 0 0 2px #717981;color:#717981!important}#footer .button:hover,#footer button:hover,#footer input[type=button]:hover,#footer input[type=reset]:hover,#footer input[type=submit]:hover{box-shadow:inset 0 0 0 2px #18bfef;color:#18bfef!important}#footer .button.primary,#footer button.primary,#footer input[type=button].primary,#footer input[type=reset].primary,#footer input[type=submit].primary{background-color:#717981;box-shadow:none;color:#f5f5f5!important}#footer .button.primary:hover,#footer button.primary:hover,#footer input[type=button].primary:hover,#footer input[type=reset].primary:hover,#footer input[type=submit].primary:hover{background-color:#18bfef}#footer label{color:#717981}#footer input[type=email],#footer input[type=password],#footer input[type=text],#footer select,#footer textarea{border-color:#e2e2e2}#footer input[type=email]:focus,#footer input[type=password]:focus,#footer input[type=text]:focus,#footer select:focus,#footer textarea:focus{border-color:#18bfef}#footer select{background-image:url("data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='40' height='40' preserveAspectRatio='none' viewBox='0 0 40 40'%3E%3Cpath d='M9.4,12.3l10.4,10.4l10.4-10.4c0.2-0.2,0.5-0.4,0.9-0.4c0.3,0,0.6,0.1,0.9,0.4l3.3,3.3c0.2,0.2,0.4,0.5,0.4,0.9 c0,0.4-0.1,0.6-0.4,0.9L20.7,31.9c-0.2,0.2-0.5,0.4-0.9,0.4c-0.3,0-0.6-0.1-0.9-0.4L4.3,17.3c-0.2-0.2-0.4-0.5-0.4-0.9 c0-0.4,0.1-0.6,0.4-0.9l3.3-3.3c0.2-0.2,0.5-0.4,0.9-0.4S9.1,12.1,9.4,12.3z' fill='%23e2e2e2' /%3E%3C/svg%3E")}#footer select option{background-color:#f5f5f5;color:#717981}#footer .select-wrapper:before{color:#e2e2e2}#footer input[type=checkbox]+label,#footer input[type=radio]+label{color:#717981}#footer input[type=checkbox]+label:before,#footer input[type=radio]+label:before{border-color:#e2e2e2}#footer input[type=checkbox]:checked+label:before,#footer input[type=radio]:checked+label:before{background-color:#717981;border-color:#717981;color:#f5f5f5}#footer input[type=checkbox]:focus+label:before,#footer input[type=radio]:focus+label:before{border-color:#18bfef}#footer ::-webkit-input-placeholder{color:#b3b7bb!important}#footer :-moz-placeholder{color:#b3b7bb!important}#footer ::-moz-placeholder{color:#b3b7bb!important}#footer :-ms-input-placeholder{color:#b3b7bb!important}#footer .formerize-placeholder{color:#b3b7bb!important}#footer ul.divided li{border-top-color:#e2e2e2}#footer ul.icons li a.icon:hover:before{color:#18bfef}#footer ul.icons.alt li .icon:before{box-shadow:inset 0 0 0 2px #e2e2e2}#footer ul.icons.alt li a.icon:hover:before{box-shadow:inset 0 0 0 2px #18bfef}#footer header.major .date:after,#footer header.major .date:before{border-top-color:#e2e2e2}#footer table tbody tr{border-color:#e2e2e2}#footer table tbody tr:nth-child(2n+1){background-color:rgba(220,220,220,.5)}#footer table th{color:#717981}#footer table thead{border-bottom-color:#e2e2e2}#footer table tfoot{border-top-color:#e2e2e2}#footer table.alt tbody tr td{border-color:#e2e2e2}#footer .pagination a,#footer .pagination span{border-color:#e2e2e2}#footer .pagination a{color:#717981!important}#footer .pagination a:hover{color:#18bfef!important;border-color:#18bfef;z-index:1}#footer .pagination a:hover+a,#footer .pagination a:hover+span{border-left-color:#18bfef}#footer .pagination a.active{background-color:#e2e2e2}#footer .pagination span{color:#e2e2e2}#footer>section{-moz-flex-basis:50%;-webkit-flex-basis:50%;-ms-flex-basis:50%;flex-basis:50%;-moz-flex-grow:1;-webkit-flex-grow:1;-ms-flex-grow:1;flex-grow:1;-moz-flex-shrink:1;-webkit-flex-shrink:1;-ms-flex-shrink:1;flex-shrink:1;padding:4rem 4rem 2rem 4rem;border-left:solid 2px #e2e2e2}#footer>section:first-child{border-left:0}#footer>section.split{display:-moz-flex;display:-webkit-flex;display:-ms-flex;display:flex;-moz-flex-direction:column;-webkit-flex-direction:column;-ms-flex-direction:column;flex-direction:column;padding:0}#footer>section.split>section{padding:3rem 4rem 1rem 4rem;border-top:solid 2px #e2e2e2}#footer>section.split>section:first-child{padding:5rem 4rem 1rem 4rem;border-top:0}#footer>section.split>section:last-child{padding:3rem 4rem 3rem 4rem}#footer>section.split.contact>section{display:-moz-flex;display:-webkit-flex;display:-ms-flex;display:flex;-moz-align-items:center;-webkit-align-items:center;-ms-align-items:center;align-items:center;padding:3.15rem 4rem}#footer>section.split.contact>section>*{margin-bottom:0}#footer>section.split.contact>section>:first-child{-moz-flex-shrink:0;-webkit-flex-shrink:0;-ms-flex-shrink:0;flex-shrink:0;-moz-flex-grow:0;-webkit-flex-grow:0;-ms-flex-grow:0;flex-grow:0;width:6rem}#footer>section.split.contact>section>:last-child{-moz-flex-shrink:1;-webkit-flex-shrink:1;-ms-flex-shrink:1;flex-shrink:1;-moz-flex-grow:1;-webkit-flex-grow:1;-ms-flex-grow:1;flex-grow:1}#footer>section.split.contact>section:first-child{padding:4rem 4rem 3rem 4rem}#footer>section.split.contact>section:last-child{padding:3rem 4rem 4rem 4rem}#footer>section.split.contact>section.alt{-moz-align-items:-moz-flex-start;-webkit-align-items:-webkit-flex-start;-ms-align-items:-ms-flex-start;align-items:flex-start}#footer>section.split.contact>section.alt>:last-child{margin-top:-.325rem}#footer form label,#footer h3,#footer p{font-size:.8rem}@media screen and (max-width:980px){#footer{display:block}#footer>section{border-top:solid 2px #e2e2e2}#footer>section:first-child{border-top:0}#footer>section.split>section{padding:4rem 4rem 2rem 4rem}#footer>section.split>section:first-child{padding:4rem 4rem 2rem 4rem}#footer>section.split>section:last-child{padding:4rem 4rem 2rem 4rem}#footer>section.split.contact>section{padding:4rem}#footer>section.split.contact>section:first-child{padding:4rem}#footer>section.split.contact>section:last-child{padding:4rem}#footer form label,#footer h3,#footer p{font-size:.9rem}}@media screen and (max-width:736px){#footer>section{padding:2rem 2rem .1rem 2rem}#footer>section.split>section{padding:2rem 2rem .1rem 2rem}#footer>section.split>section:first-child{padding:2rem 2rem .1rem 2rem}#footer>section.split>section:last-child{padding:2rem 2rem .1rem 2rem}#footer>section.split.contact>section{padding:2rem}#footer>section.split.contact>section:first-child{padding:2rem}#footer>section.split.contact>section:last-child{padding:2rem}}@media screen and (max-width:480px){#footer{width:100%}}#copyright{color:#fff;position:relative;color:rgba(255,255,255,.25);cursor:default;font-family:"Source Sans Pro",Helvetica,sans-serif;font-size:.8rem;font-weight:900;letter-spacing:.075em;line-height:1.5;text-align:center;text-transform:uppercase;margin:4rem auto 8rem auto;width:calc(100% - 4rem);max-width:72rem;z-index:2}#copyright input,#copyright select,#copyright textarea{color:#fff}#copyright a{color:#fff;border-bottom-color:rgba(255,255,255,.5)}#copyright a:hover{border-bottom-color:transparent;color:#18bfef!important}#copyright b,#copyright strong{color:#fff}#copyright h1,#copyright h2,#copyright h3,#copyright h4,#copyright h5,#copyright h6{color:#fff}#copyright blockquote{border-left-color:#fff}#copyright code{background:rgba(255,255,255,.075);border-color:#fff}#copyright hr{border-bottom-color:#fff}#copyright a{color:inherit;border-bottom-color:inherit}#copyright ul{list-style:none;margin:0;padding-left:0}#copyright ul li{border-left:solid 2px;display:inline-block;line-height:1;margin-left:1rem;padding-left:1rem}#copyright ul li:first-child{border-left:0;margin-left:0;padding-left:0}@media screen and (max-width:1280px){#copyright{margin:4rem auto}}@media screen and (max-width:480px){#copyright ul li{border-left:0;margin:1rem 0 0 0;padding-left:0;display:block}#copyright ul li:first-child{margin-top:0}}#navPanelToggle{text-decoration:none;-moz-transition:color .2s ease-in-out,background-color .2s ease-in-out,box-shadow .2s ease-in-out;-webkit-transition:color .2s ease-in-out,background-color .2s ease-in-out,box-shadow .2s ease-in-out;-ms-transition:color .2s ease-in-out,background-color .2s ease-in-out,box-shadow .2s ease-in-out;transition:color .2s ease-in-out,background-color .2s ease-in-out,box-shadow .2s ease-in-out;display:none;position:fixed;top:.75rem;right:.75rem;border:0;color:#fff;font-family:"Source Sans Pro",Helvetica,sans-serif;font-size:.9rem;font-weight:900;letter-spacing:.075em;padding:.375rem 1.25rem;text-transform:uppercase;z-index:10001}#navPanelToggle:before{-moz-osx-font-smoothing:grayscale;-webkit-font-smoothing:antialiased;display:inline-block;font-style:normal;font-variant:normal;text-rendering:auto;line-height:1;text-transform:none!important;font-family:'Font Awesome 5 Free';font-weight:900}#navPanelToggle:before{content:'\f0c9';margin-right:.5rem}#navPanelToggle.alt{background-color:rgba(255,255,255,.875);box-shadow:0 .125rem .75rem 0 rgba(30,37,45,.25);color:#212931}#navPanelToggle.alt:hover{background-color:#fff}@media screen and (max-width:980px){#navPanelToggle{display:block}}@media screen and (max-width:736px){#navPanelToggle{font-size:.8rem;padding:.25rem 1rem}}#navPanel{-moz-transform:translateX(20rem);-webkit-transform:translateX(20rem);-ms-transform:translateX(20rem);transform:translateX(20rem);-moz-transition:-moz-transform .5s ease,box-shadow .5s ease,visibility .5s;-webkit-transition:-webkit-transform .5s ease,box-shadow .5s ease,visibility .5s;-ms-transition:-ms-transform .5s ease,box-shadow .5s ease,visibility .5s;transition:transform .5s ease,box-shadow .5s ease,visibility .5s;display:none;-webkit-overflow-scrolling:touch;background:#fff;box-shadow:none;color:#212931;height:100%;max-width:80%;overflow-y:auto;padding:3rem 2rem;position:fixed;right:0;top:0;visibility:hidden;width:20rem;z-index:10002}#navPanel .links{list-style:none;padding-left:0}#navPanel .links li{border-top:solid 2px #eee}#navPanel .links li a{border-bottom:0;display:block;font-family:"Source Sans Pro",Helvetica,sans-serif;font-size:.9rem;font-size:.9rem;font-weight:900;letter-spacing:.075em;padding:.75rem 0;text-transform:uppercase}#navPanel .links li:first-child{border-top:0}#navPanel .close{text-decoration:none;-moz-transition:color .2s ease-in-out;-webkit-transition:color .2s ease-in-out;-ms-transition:color .2s ease-in-out;transition:color .2s ease-in-out;-webkit-tap-highlight-color:transparent;border:0;color:#909498;cursor:pointer;display:block;height:3.25rem;line-height:3.25rem;padding-right:1.25rem;position:absolute;right:0;text-align:right;top:0;vertical-align:middle;width:7rem}#navPanel .close:before{-moz-osx-font-smoothing:grayscale;-webkit-font-smoothing:antialiased;display:inline-block;font-style:normal;font-variant:normal;text-rendering:auto;line-height:1;text-transform:none!important;font-family:'Font Awesome 5 Free';font-weight:900}#navPanel .close:before{content:'\f00d';font-size:1.25rem}#navPanel .close:hover{color:#212931}@media screen and (max-width:736px){#navPanel .close{height:4rem;line-height:4rem}}@media screen and (max-width:980px){#navPanel{display:block}}@media screen and (max-width:736px){#navPanel{padding:2.5rem 1.75rem}}@media screen and (max-width:980px){body.is-navPanel-visible #wrapper{opacity:.5}body.is-navPanel-visible #navPanel{-moz-transform:translateX(0);-webkit-transform:translateX(0);-ms-transform:translateX(0);transform:translateX(0);box-shadow:0 0 1.5rem 0 rgba(0,0,0,.2);visibility:visible}}	
		/* Nav */

#nav1 {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    text-align: center;
    padding: 1.5em 0 1.5em 0;
    z-index: 1;
    overflow: hidden;
}

    #nav1 > ul {
        line-height: 0px;
        position: relative;
        display: inline-block;
        margin: 0;
        height: 21px;
        border-left: solid 1px #fff;
        border-right: solid 1px #fff;
    }

        #nav1 > ul:before, #nav1 > ul:after {
            content: '';
            display: block;
            width: 300%;
            position: absolute;
            top: 50%;
            margin-top: -2px;
            height: 5px;
            border-top: solid 1px #fff;
            border-bottom: solid 1px #fff;
        }

        #nav1 > ul:before {
            left: 100%;
            margin-left: 1px;
        }

        #nav1 > ul:after {
            right: 100%;
            margin-right: 1px;
        }

        #nav1 > ul > li {
            display: inline-block;
            margin: -9px 0.5em 0 0.5em;
            border-radius: 0.5em;
            padding: 0.85em;
            border: solid 1px transparent;
            -moz-transition: color 0.35s ease-in-out, border-color 0.35s ease-in-out;
            -webkit-transition: color 0.35s ease-in-out, border-color 0.35s ease-in-out;
            -ms-transition: color 0.35s ease-in-out, border-color 0.35s ease-in-out;
            transition: color 0.35s ease-in-out, border-color 0.35s ease-in-out;
        }

            #nav1 > ul > li.active {
                border-color: rgba(192, 192, 192, 0.35);
            }

            #nav1 > ul > li > a, #nav1 > ul > li > span {
                display: block;
                color: inherit;
                text-decoration: none;
                border: 0;
                outline: 0;
            }

            #nav1 > ul > li > ul {
                display: none;
            }

    #nav1 * {
        font-family: 'Source Sans Pro', sans-serif;
        color: #fff;
        font-weight: 300;
        font-size: 16px;
    }

    #nav1 li {
        list-style: none;
    }









.file-upload {
background-color: #ffffff;
width: 600px;
margin: 0 auto;
padding: 20px;
}

.file-upload-btn {
width: 100%;
margin: 0;
color: #fff;
background: #1FB264;
border: none;
padding: 10px;
border-radius: 4px;
border-bottom: 4px solid #15824B;
transition: all .2s ease;
outline: none;
text-transform: uppercase;
font-weight: 700;
}

.file-upload-btn:hover {
background: #1AA059;
color: #ffffff;
transition: all .2s ease;
cursor: pointer;
}

.file-upload-btn:active {
border: 0;
transition: all .2s ease;
}

.file-upload-content {
display: none;
text-align: center;
}

.file-upload-input {
position: absolute;
margin: 0;
padding: 0;
width: 100%;
height: 100%;
outline: none;
opacity: 0;
cursor: pointer;
}

.image-upload-wrap {
margin-top: 20px;
border: 4px dashed #1FB264;
position: relative;
}

.image-dropping,
.image-upload-wrap:hover {
background-color: #1FB264;
border: 4px dashed #ffffff;
}

.image-title-wrap {
padding: 0 15px 15px 15px;
color: #222;
}

.drag-text {
text-align: center;
}

.drag-text h3 {
font-weight: 100;
text-transform: uppercase;
color: #15824B;
padding: 60px 0;
}

.file-upload-image {
max-height: 200px;
max-width: 200px;
margin: auto;
padding: 20px;
}

.remove-image {
width: 200px;
margin: 0;
color: #fff;
background: #cd4535;
border: none;
padding: 10px;
border-radius: 4px;
border-bottom: 4px solid #b02818;
transition: all .2s ease;
outline: none;
text-transform: uppercase;
font-weight: 700;
}

.remove-image:hover {
background: #c13b2a;
color: #ffffff;
transition: all .2s ease;
cursor: pointer;
}

.remove-image:active {
border: 0;
transition: all .2s ease;
}
		</style>

	<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header id="header">
						<a href="index.html" class="logo">SPLLLY</a>
					</header>

				<!-- Nav1 -->
					<nav id="nav1">
						<ul>
							<li><a href="index.html">Home</a></li>
							<li><a href="index.html">Upload</a></li>
							<li><a href="index.html">Search</a></li>
							<li><a href="index.html">Community</a></li>
							<li><a href="index.html">My Page</a></li>
							<li><a href="javascript:login();">Login</a></li>
							<script>
								function login() {
									document.getElementById('login').classList.add('on');
									document.getElementsByTagName('html')[0].style.overflow = 'hidden';						
								}
							</script>
							
						</ul>
					</nav>
					

				<!-- Nav -->
					<nav id="nav">
						<ul class="links">
							<li><a href="index.html">This is Massively</a></li>
							<li class="active"><a href="generic.html">Generic Page</a></li>
							<li><a href="elements.html">Elements Reference</a></li>
						</ul>
						<ul class="icons">
							<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
							<li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
							<li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
							<li><a href="#" class="icon brands fa-github"><span class="label">GitHub</span></a></li>
						</ul>
					</nav>

				<!-- Main -->
				<div id="main">

					<!-- Posts -->
						<section class="posts">
						<!--http://localhost:8100/one --> 
							<form action= "imgupload.do" method="post" enctype="multipart/form-data">

								<div class="file-upload">
									<div class="image-upload-wrap image-upload-wrap1">
										<input class="file-upload-input file-upload-input1" type='file' name="img1" onchange="readURL(this, 1);" accept="image/*" />
										<div class="drag-text">
											<h3>Drag and drop a file or select add Image</h3>
										</div>
									</div>
									<div class="file-upload-content file-upload-content1">
										<img class="file-upload-image file-upload-image1" src="#" alt="your image" />
										<div class="image-title-wrap">
											<button type="button" onclick="removeUpload(1)" class="remove-image">Remove <span class="image-title image-title1">Uploaded Image</span></button>
										</div>
									</div>
									
									<div class="image-upload-wrap image-upload-wrap2">
										<input class="file-upload-input file-upload-input2" type='file' name="img2" onchange="readURL(this, 2);" accept="image/*" />
										<div class="drag-text">
											<h3>Drag and drop a file or select add Image</h3>
										</div>
									</div>
									<div class="file-upload-content file-upload-content2">
										<img class="file-upload-image file-upload-image2" src="#" alt="your image" />
										<div class="image-title-wrap">
											<button type="button" onclick="removeUpload(2)" class="remove-image">Remove <span class="image-title image-title2">Uploaded Image</span></button>
										</div>
									</div>
 

									<div class="image-upload-wrap image-upload-wrap3">
										<input class="file-upload-input file-upload-input3" type='file' name="img3" onchange="readURL(this, 3);" accept="image/*" />
										<div class="drag-text">
											<h3>Drag and drop a file or select add Image</h3>
										</div>
									</div>
									<div class="file-upload-content file-upload-content3">
										<img class="file-upload-image file-upload-image3" src="#" alt="your image" />
										<div class="image-title-wrap">
											<button type="button" onclick="removeUpload(3)" class="remove-image">Remove <span class="image-title image-title3">Uploaded Image</span></button>
										</div>
									</div>  


								</div>
								
								<input type="submit" value="�м��ϱ�">
							
							</form>
							
						</section>

				</div>

				

				<!-- Copyright -->
					<div id="copyright">
						<ul><li>&copy; Untitled</li><li>Design: <a href="https://html5up.net">HTML5 UP</a></li></ul>
					</div>

			</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script>
			(function($) {

/**
 * Generate an indented list of links from a nav. Meant for use with panel().
 * @return {jQuery} jQuery object.
 */
$.fn.navList = function() {

	var	$this = $(this);
		$a = $this.find('a'),
		b = [];

	$a.each(function() {

		var	$this = $(this),
			indent = Math.max(0, $this.parents('li').length - 1),
			href = $this.attr('href'),
			target = $this.attr('target');

		b.push(
			'<a ' +
				'class="link depth-' + indent + '"' +
				( (typeof target !== 'undefined' && target != '') ? ' target="' + target + '"' : '') +
				( (typeof href !== 'undefined' && href != '') ? ' href="' + href + '"' : '') +
			'>' +
				'<span class="indent-' + indent + '"></span>' +
				$this.text() +
			'</a>'
		);

	});

	return b.join('');

};

/**
 * Panel-ify an element.
 * @param {object} userConfig User config.
 * @return {jQuery} jQuery object.
 */
$.fn.panel = function(userConfig) {

	// No elements?
		if (this.length == 0)
			return $this;

	// Multiple elements?
		if (this.length > 1) {

			for (var i=0; i < this.length; i++)
				$(this[i]).panel(userConfig);

			return $this;

		}

	// Vars.
		var	$this = $(this),
			$body = $('body'),
			$window = $(window),
			id = $this.attr('id'),
			config;

	// Config.
		config = $.extend({

			// Delay.
				delay: 0,

			// Hide panel on link click.
				hideOnClick: false,

			// Hide panel on escape keypress.
				hideOnEscape: false,

			// Hide panel on swipe.
				hideOnSwipe: false,

			// Reset scroll position on hide.
				resetScroll: false,

			// Reset forms on hide.
				resetForms: false,

			// Side of viewport the panel will appear.
				side: null,

			// Target element for "class".
				target: $this,

			// Class to toggle.
				visibleClass: 'visible'

		}, userConfig);

		// Expand "target" if it's not a jQuery object already.
			if (typeof config.target != 'jQuery')
				config.target = $(config.target);

	// Panel.

		// Methods.
			$this._hide = function(event) {

				// Already hidden? Bail.
					if (!config.target.hasClass(config.visibleClass))
						return;

				// If an event was provided, cancel it.
					if (event) {

						event.preventDefault();
						event.stopPropagation();

					}

				// Hide.
					config.target.removeClass(config.visibleClass);

				// Post-hide stuff.
					window.setTimeout(function() {

						// Reset scroll position.
							if (config.resetScroll)
								$this.scrollTop(0);

						// Reset forms.
							if (config.resetForms)
								$this.find('form').each(function() {
									this.reset();
								});

					}, config.delay);

			};

		// Vendor fixes.
			$this
				.css('-ms-overflow-style', '-ms-autohiding-scrollbar')
				.css('-webkit-overflow-scrolling', 'touch');

		// Hide on click.
			if (config.hideOnClick) {

				$this.find('a')
					.css('-webkit-tap-highlight-color', 'rgba(0,0,0,0)');

				$this
					.on('click', 'a', function(event) {

						var $a = $(this),
							href = $a.attr('href'),
							target = $a.attr('target');

						if (!href || href == '#' || href == '' || href == '#' + id)
							return;

						// Cancel original event.
							event.preventDefault();
							event.stopPropagation();

						// Hide panel.
							$this._hide();

						// Redirect to href.
							window.setTimeout(function() {

								if (target == '_blank')
									window.open(href);
								else
									window.location.href = href;

							}, config.delay + 10);

					});

			}

		// Event: Touch stuff.
			$this.on('touchstart', function(event) {

				$this.touchPosX = event.originalEvent.touches[0].pageX;
				$this.touchPosY = event.originalEvent.touches[0].pageY;

			})

			$this.on('touchmove', function(event) {

				if ($this.touchPosX === null
				||	$this.touchPosY === null)
					return;

				var	diffX = $this.touchPosX - event.originalEvent.touches[0].pageX,
					diffY = $this.touchPosY - event.originalEvent.touches[0].pageY,
					th = $this.outerHeight(),
					ts = ($this.get(0).scrollHeight - $this.scrollTop());

				// Hide on swipe?
					if (config.hideOnSwipe) {

						var result = false,
							boundary = 20,
							delta = 50;

						switch (config.side) {

							case 'left':
								result = (diffY < boundary && diffY > (-1 * boundary)) && (diffX > delta);
								break;

							case 'right':
								result = (diffY < boundary && diffY > (-1 * boundary)) && (diffX < (-1 * delta));
								break;

							case 'top':
								result = (diffX < boundary && diffX > (-1 * boundary)) && (diffY > delta);
								break;

							case 'bottom':
								result = (diffX < boundary && diffX > (-1 * boundary)) && (diffY < (-1 * delta));
								break;

							default:
								break;

						}

						if (result) {

							$this.touchPosX = null;
							$this.touchPosY = null;
							$this._hide();

							return false;

						}

					}

				// Prevent vertical scrolling past the top or bottom.
					if (($this.scrollTop() < 0 && diffY < 0)
					|| (ts > (th - 2) && ts < (th + 2) && diffY > 0)) {

						event.preventDefault();
						event.stopPropagation();

					}

			});

		// Event: Prevent certain events inside the panel from bubbling.
			$this.on('click touchend touchstart touchmove', function(event) {
				event.stopPropagation();
			});

		// Event: Hide panel if a child anchor tag pointing to its ID is clicked.
			$this.on('click', 'a[href="#' + id + '"]', function(event) {

				event.preventDefault();
				event.stopPropagation();

				config.target.removeClass(config.visibleClass);

			});

	// Body.

		// Event: Hide panel on body click/tap.
			$body.on('click touchend', function(event) {
				$this._hide(event);
			});

		// Event: Toggle.
			$body.on('click', 'a[href="#' + id + '"]', function(event) {

				event.preventDefault();
				event.stopPropagation();

				config.target.toggleClass(config.visibleClass);

			});

	// Window.

		// Event: Hide on ESC.
			if (config.hideOnEscape)
				$window.on('keydown', function(event) {

					if (event.keyCode == 27)
						$this._hide(event);

				});

	return $this;

};

/**
 * Apply "placeholder" attribute polyfill to one or more forms.
 * @return {jQuery} jQuery object.
 */
$.fn.placeholder = function() {

	// Browser natively supports placeholders? Bail.
		if (typeof (document.createElement('input')).placeholder != 'undefined')
			return $(this);

	// No elements?
		if (this.length == 0)
			return $this;

	// Multiple elements?
		if (this.length > 1) {

			for (var i=0; i < this.length; i++)
				$(this[i]).placeholder();

			return $this;

		}

	// Vars.
		var $this = $(this);

	// Text, TextArea.
		$this.find('input[type=text],textarea')
			.each(function() {

				var i = $(this);

				if (i.val() == ''
				||  i.val() == i.attr('placeholder'))
					i
						.addClass('polyfill-placeholder')
						.val(i.attr('placeholder'));

			})
			.on('blur', function() {

				var i = $(this);

				if (i.attr('name').match(/-polyfill-field$/))
					return;

				if (i.val() == '')
					i
						.addClass('polyfill-placeholder')
						.val(i.attr('placeholder'));

			})
			.on('focus', function() {

				var i = $(this);

				if (i.attr('name').match(/-polyfill-field$/))
					return;

				if (i.val() == i.attr('placeholder'))
					i
						.removeClass('polyfill-placeholder')
						.val('');

			});

	// Password.
		$this.find('input[type=password]')
			.each(function() {

				var i = $(this);
				var x = $(
							$('<div>')
								.append(i.clone())
								.remove()
								.html()
								.replace(/type="password"/i, 'type="text"')
								.replace(/type=password/i, 'type=text')
				);

				if (i.attr('id') != '')
					x.attr('id', i.attr('id') + '-polyfill-field');

				if (i.attr('name') != '')
					x.attr('name', i.attr('name') + '-polyfill-field');

				x.addClass('polyfill-placeholder')
					.val(x.attr('placeholder')).insertAfter(i);

				if (i.val() == '')
					i.hide();
				else
					x.hide();

				i
					.on('blur', function(event) {

						event.preventDefault();

						var x = i.parent().find('input[name=' + i.attr('name') + '-polyfill-field]');

						if (i.val() == '') {

							i.hide();
							x.show();

						}

					});

				x
					.on('focus', function(event) {

						event.preventDefault();

						var i = x.parent().find('input[name=' + x.attr('name').replace('-polyfill-field', '') + ']');

						x.hide();

						i
							.show()
							.focus();

					})
					.on('keypress', function(event) {

						event.preventDefault();
						x.val('');

					});

			});

	// Events.
		$this
			.on('submit', function() {

				$this.find('input[type=text],input[type=password],textarea')
					.each(function(event) {

						var i = $(this);

						if (i.attr('name').match(/-polyfill-field$/))
							i.attr('name', '');

						if (i.val() == i.attr('placeholder')) {

							i.removeClass('polyfill-placeholder');
							i.val('');

						}

					});

			})
			.on('reset', function(event) {

				event.preventDefault();

				$this.find('select')
					.val($('option:first').val());

				$this.find('input,textarea')
					.each(function() {

						var i = $(this),
							x;

						i.removeClass('polyfill-placeholder');

						switch (this.type) {

							case 'submit':
							case 'reset':
								break;

							case 'password':
								i.val(i.attr('defaultValue'));

								x = i.parent().find('input[name=' + i.attr('name') + '-polyfill-field]');

								if (i.val() == '') {
									i.hide();
									x.show();
								}
								else {
									i.show();
									x.hide();
								}

								break;

							case 'checkbox':
							case 'radio':
								i.attr('checked', i.attr('defaultValue'));
								break;

							case 'text':
							case 'textarea':
								i.val(i.attr('defaultValue'));

								if (i.val() == '') {
									i.addClass('polyfill-placeholder');
									i.val(i.attr('placeholder'));
								}

								break;

							default:
								i.val(i.attr('defaultValue'));
								break;

						}
					});

			});

	return $this;

};

/**
 * Moves elements to/from the first positions of their respective parents.
 * @param {jQuery} $elements Elements (or selector) to move.
 * @param {bool} condition If true, moves elements to the top. Otherwise, moves elements back to their original locations.
 */
$.prioritize = function($elements, condition) {

	var key = '__prioritize';

	// Expand $elements if it's not already a jQuery object.
		if (typeof $elements != 'jQuery')
			$elements = $($elements);

	// Step through elements.
		$elements.each(function() {

			var	$e = $(this), $p,
				$parent = $e.parent();

			// No parent? Bail.
				if ($parent.length == 0)
					return;

			// Not moved? Move it.
				if (!$e.data(key)) {

					// Condition is false? Bail.
						if (!condition)
							return;

					// Get placeholder (which will serve as our point of reference for when this element needs to move back).
						$p = $e.prev();

						// Couldn't find anything? Means this element's already at the top, so bail.
							if ($p.length == 0)
								return;

					// Move element to top of parent.
						$e.prependTo($parent);

					// Mark element as moved.
						$e.data(key, $p);

				}

			// Moved already?
				else {

					// Condition is true? Bail.
						if (condition)
							return;

					$p = $e.data(key);

					// Move element back to its original location (using our placeholder).
						$e.insertAfter($p);

					// Unmark element as moved.
						$e.removeData(key);

				}

		});

};

})(jQuery);</script>
			<script>
				/*
	Helios by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
*/

(function($) {

var	$window = $(window),
	$body = $('body'),
	settings = {

		// Carousels
			carousels: {
				speed: 4,
				fadeIn: true,
				fadeDelay: 250
			},

	};

// Breakpoints.
	breakpoints({
		wide:      [ '1281px',  '1680px' ],
		normal:    [ '961px',   '1280px' ],
		narrow:    [ '841px',   '960px'  ],
		narrower:  [ '737px',   '840px'  ],
		mobile:    [ null,      '736px'  ]
	});

// Play initial animations on page load.
	$window.on('load', function() {
		window.setTimeout(function() {
			$body.removeClass('is-preload');
		}, 100);
	});

// Dropdowns.
	$('#nav > ul').dropotron({
		mode: 'fade',
		speed: 350,
		noOpenerFade: true,
		alignment: 'center'
	});

// Scrolly.
	$('.scrolly').scrolly();

// Nav.

	// Button.
		$(
			'<div id="navButton">' +
				'<a href="#navPanel" class="toggle"></a>' +
			'</div>'
		)
			.appendTo($body);

	// Panel.
		$(
			'<div id="navPanel">' +
				'<nav>' +
					$('#nav').navList() +
				'</nav>' +
			'</div>'
		)
			.appendTo($body)
			.panel({
				delay: 500,
				hideOnClick: true,
				hideOnSwipe: true,
				resetScroll: true,
				resetForms: true,
				target: $body,
				visibleClass: 'navPanel-visible'
			});

// Carousels.
	$('.carousel').each(function() {

		var	$t = $(this),
			$forward = $('<span class="forward"></span>'),
			$backward = $('<span class="backward"></span>'),
			$reel = $t.children('.reel'),
			$items = $reel.children('article');

		var	pos = 0,
			leftLimit,
			rightLimit,
			itemWidth,
			reelWidth,
			timerId;

		// Items.
			if (settings.carousels.fadeIn) {

				$items.addClass('loading');

				$t.scrollex({
					mode: 'middle',
					top: '-20vh',
					bottom: '-20vh',
					enter: function() {

						var	timerId,
							limit = $items.length - Math.ceil($window.width() / itemWidth);

						timerId = window.setInterval(function() {
							var x = $items.filter('.loading'), xf = x.first();

							if (x.length <= limit) {

								window.clearInterval(timerId);
								$items.removeClass('loading');
								return;

							}

							xf.removeClass('loading');

						}, settings.carousels.fadeDelay);

					}
				});

			}

		// Main.
			$t._update = function() {
				pos = 0;
				rightLimit = (-1 * reelWidth) + $window.width();
				leftLimit = 0;
				$t._updatePos();
			};

			$t._updatePos = function() { $reel.css('transform', 'translate(' + pos + 'px, 0)'); };

		// Forward.
			$forward
				.appendTo($t)
				.hide()
				.mouseenter(function(e) {
					timerId = window.setInterval(function() {
						pos -= settings.carousels.speed;

						if (pos <= rightLimit)
						{
							window.clearInterval(timerId);
							pos = rightLimit;
						}

						$t._updatePos();
					}, 10);
				})
				.mouseleave(function(e) {
					window.clearInterval(timerId);
				});

		// Backward.
			$backward
				.appendTo($t)
				.hide()
				.mouseenter(function(e) {
					timerId = window.setInterval(function() {
						pos += settings.carousels.speed;

						if (pos >= leftLimit) {

							window.clearInterval(timerId);
							pos = leftLimit;

						}

						$t._updatePos();
					}, 10);
				})
				.mouseleave(function(e) {
					window.clearInterval(timerId);
				});

		// Init.
			$window.on('load', function() {

				reelWidth = $reel[0].scrollWidth;

				if (browser.mobile) {

					$reel
						.css('overflow-y', 'hidden')
						.css('overflow-x', 'scroll')
						.scrollLeft(0);
					$forward.hide();
					$backward.hide();

				}
				else {

					$reel
						.css('overflow', 'visible')
						.scrollLeft(0);
					$forward.show();
					$backward.show();

				}

				$t._update();

				$window.on('resize', function() {
					reelWidth = $reel[0].scrollWidth;
					$t._update();
				}).trigger('resize');

			});

	});

})(jQuery);
			</script>
			<script>
				var file_upload_input1 = $('.file-upload-input1').clone();

				 function readURL(input, x) {
					
					if (input.files && input.files[0]) {

						var reader = new FileReader();

						reader.onload = function(e) {
							$('.image-upload-wrap'+x).hide();

							$('.file-upload-image'+x).attr('src', e.target.result);
							$('.file-upload-content'+x).show();

							$('.image-title'+x).html(input.files[0].name);
						};

						reader.readAsDataURL(input.files[0]);

					} else {
						removeUpload(x);
					}
				}

				function removeUpload(x) {
					$('.file-upload-input'+x).replaceWith($('.file-upload-input'+x).clone());
					$('.file-upload-content'+x).hide();
					$('.image-upload-wrap'+x).show();
				}

				$('.image-upload-wrap'+x).bind('dragover', function () {
					$('.image-upload-wrap'+x).addClass('image-dropping');
				});

				$('.image-upload-wrap'+x).bind('dragleave', function () {
					$('.image-upload-wrap'+x).removeClass('image-dropping');
				});
	
			</script>

	</body>
</html>
</html>