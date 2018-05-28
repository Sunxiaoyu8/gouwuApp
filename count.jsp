<%@ page language="java" contentType="text/html; charset=GBK" pageEncoding="GBK"%>  
<%@ page import="java.util.*"%>  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=GBK">  
<title>查看购物车商品页面</title>  
</head>  
<body>  
    <h3>这里是结账柜台，请确认以下信息。</h3>  
    <br />  
    <%  
      
    String id=(String) session.getAttribute("id");  
    out.println("您的支付卡号：" + id);  
    Enumeration enumsec= session.getAttributeNames();  
    out.println("<br>购物车中的书籍清单：<br>");  
    while (enumsec.hasMoreElements()) {  
        String ser=(String)enumsec.nextElement();  
        String scr=(String)session.getAttribute(ser);  
        if (!(scr.equals(id))) {  
            out.println("  " + scr + "<br>");  
            session.removeAttribute(ser);  
        }  
    }  
    %>  
        <a href="loginID.jsp"> 欢迎修改支付卡卡号！</a>  
        <a href="food.jsp"> 欢迎来到购书柜台！</a>  
</body>  
</html>  