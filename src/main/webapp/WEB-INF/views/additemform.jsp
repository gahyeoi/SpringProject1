<%--
  Created by IntelliJ IDEA.
  User: hyukjinchoi
  Date: 12/16/23
  Time: 1:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>자유게시판</title>
  <style>
    #list {
      font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
      border-collapse: collapse;
      width: 100%;
    }
    #list td, #list th {
      border: 1px solid #ddd;
      padding: 8px;
      text-align:center;
    }
    #list tr:nth-child(even){background-color: #f2f2f2;}
    #list tr:hover {background-color: #ddd;}
    #list th {
      padding-top: 12px;
      padding-bottom: 12px;
      text-align: center;
      background-color: #006bb3;
      color: white;
    }
  </style>
</head>
<body>
<form action="addItemOK" method="post">
  <table id="edit">
    <tr><td>상품 이름</td><td><input type="text" name="name" required></td></tr>
    <tr><td>상품 사진</td><td><input type="file" name="photo" required></td></tr>
    <tr><td>가격</td><td><input type="number" name="price" required></td></tr>
    <tr><td>컬러</td><td><input type="text" name="color" required></td></tr>
    <tr><td>사이즈</td><td><input type="text" name="size" required></td></tr>
    <tr><td>남은수</td><td><input type="number" name="remaining" required></td></tr>
  </table>
  <button type="button" onclick="location.href='mall'">목록보기</button>
  <button type="submit">등록하기</button>
</form>
</body>
</html>