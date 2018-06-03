<%@ page language="java" contentType="text/html; charset=GBK" pageEncoding="GBK"%>  
<%@ page import="java.util.*"%>  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=GBK">  
<title>查看购物车商品页面</title>  
</head>  
<body>  
    <h3>这里是结账界面，请确认以下信息。</h3>  
    <br />  
    <%  
      
    String myname=(String) session.getAttribute("myname");  
    out.println("您收货的姓名：" + myname);  
    Enumeration enumsec= session.getAttributeNames();  
    out.println("<br>购物车中的书籍清单：<br>");  
    while (enumsec.hasMoreElements()) {  
        String ser=(String)enumsec.nextElement();  
        String scr=(String)session.getAttribute(ser);  
        if (!(scr.equals(myname))) {  
            out.println("  " + scr + "<br>");  
            session.removeAttribute(ser);  
        }  
    }  
    %>  
        <a href="loginID.jsp"> 欢迎修改用户名！</a>  
        <a href="buybook.jsp"> 欢迎来到购书界面！</a>  
</body>  
</html>  