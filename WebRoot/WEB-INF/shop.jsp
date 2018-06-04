<%@ page language="java" contentType="text/html; charset=GBK" pageEncoding="GBK"%>    
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=GBK">  
<title>导购页面</title>  
</head>  
<body>  
    <%   
       request.setCharacterEncoding("UTF-8");  
       String id=request.getParameter("id");  
       if(id==null){  
           id="";  
       }  
       else{  
               session.setAttribute("id",id);  
       }  
       %>  
       <a href="buybook.jsp">这里是柜台，请选择您要购买的书籍并支付购买</a><br/>  
       <a href="loginID.jsp">欢迎修改支付卡号！</a>  
</body>  
</html>  