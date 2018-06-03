<%@ page language="java" contentType="text/html; charset=GBK" pageEncoding="GBK"%>  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=GBK">  
<title>购买页面</title>  
</head>  
<body>  
    <%   
       request.setCharacterEncoding("UTF-8");  
       String myname=request.getParameter("myname");  
       if(myname==null){  
           myname="";  
       }  
       else{  
               session.setAttribute("myname",myname);  
       }  
       %>  
       <a href="buybook.jsp">这里是购物界面，请选择您要购买的书籍并支付购买</a><br/>  
       <a href="loginID.jsp">欢迎修改用户名！</a>  
</body>  
</html>  