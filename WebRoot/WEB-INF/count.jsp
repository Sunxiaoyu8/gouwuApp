<%@ page language="java" contentType="text/html; charset=GBK" pageEncoding="GBK"%>  
<%@ page import="java.util.*"%>  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=GBK">  
<title>查看购物车商品页面</title>  
</head>  
<body>  
    <h3>这里是结账界面，请确认以下信息：</h3>  

    <tr><td>顾客姓名</td><td><input type="text" name="顾客姓名" /></td></tr>

    <tr><td>送货地址</td><td><input type="text" name="送货地址" /></td></tr>

    <tr><td>手机号码</td><td><input type="text" name="手机号码" /></td></tr>

    <form action="" method="post" name="form">  
    这里是支付界面，请选择要支付的方式：<br />  
    <input type="checkbox" name="sec" value="网银" />网银  
    <input type="checkbox" name="sec" value="支付宝" />支付宝
    <input type="checkbox" name="sec" value="微信" />微信
    <br />  
    
        <a href="loginID.html"> 欢迎修改用户名！</a>  
        <a href="buybook.html"> 欢迎来到购书界面！</a>  
</body>  

<body> <h4>欢迎下次光临孙小雨书屋
           祝您学业有成，早日到达成功的彼岸！</h4></body>
</html>  