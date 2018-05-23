<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>孙小雨的书店--各类图书</title>
    <style type="text/css">
        input{
            background:pink;
            border:0px solid #c00;
        }
    </style>
  </head>

  <body>
    <div align="center">
        <h2 align="center">欢迎来到孙小雨的书店</h2>
        图书分类>>> 
        <a href="bookClass.jsp">各类图书</a>&nbsp&nbsp
        <a href="computerClass.jsp">计算机类图书</a><br>

        <p>***书籍列表***</p>
        <form action="" method="post">
            <input type="text"  name="book" value="《高等数学》&nbsp&nbsp&nbsp&nbsp徐建平&nbsp&nbsp&nbsp 32元"  size="40" maxlength="200" readonly>
            <input type="submit" name="add" value="加入购物车" height="2">
        </form>

        <form action="" method="post">
            <input type="text"  name="book" value="《管理学》&nbsp&nbsp&nbsp&nbsp周三多&nbsp&nbsp&nbsp 28元"  size="40" maxlength="200" readonly>
            <input type="submit" name="add" value="加入购物车" height="2">
        </form>

    <%
        request.setCharacterEncoding("utf-8");
        //获取要加入购物车的图书名
        String book=request.getParameter("book");
        //获取session
        ArrayList books=(ArrayList)session.getAttribute("books");
        if(books==null){
            books=new ArrayList();
            session.setAttribute("books",books);
        }
        if(book!=null){
            books.add(book);
            out.println("<script type='text/javascript'>alert('加入购物车成功');</script>");
          }
    %>  
    <br>
    <input type="button" value="查看我的购物车 " onClick="location.href='cart.jsp'"><br>
    </div>
    <%@ include file="info.jsp" %>
    </body>
</html>