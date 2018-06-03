<%@ page language="java" contentType="text/html; charset=GBK" pageEncoding="GBK"%>  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>购物页面</title>  
</head>  
<body>  
    <form action="" method="post" name="form">  
    这里是购书界面，请选择要购买的书籍：<br />  
    <input type="checkbox" name="sec" value="数学书" />数学书  
    <input type="checkbox" name="sec" value="英文书" />英文书
    <input type="checkbox" name="sec" value="计算机类书籍" />计算机类书籍  
    <input type="checkbox" name="sec" value="小说类书籍" />小说类书籍<br />  
    <input type="submit" name="gouwu" value="购物">  
    <br />  
    <br />  
    <a href="loginID.jsp">欢迎修改用户名！</a>  
    <a href="count.jsp">欢迎查看购物车！</a>  
    <%  
    request.setCharacterEncoding("GB2312");  
    String sec[] = request.getParameterValues("sec");  
    if (sec!=null && sec.length!= 0) {  
    for (int i=0;i<sec.length;i++) {  
        session.setAttribute(sec[i],sec[i]);  
    }  
    }     
            %>  
</body>  
</html>  