<%--
  Created by IntelliJ IDEA.
  User: hyukjinchoi
  Date: 12/9/23
  Time: 7:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
      img, label {display:inline-block;}
      label{width:130px}
      button{backgroud-color:blue; color:white; font-size:15px}
    </style>
</head>
<body>
<div style="width:100%;text-align: center; padding-top:100px">
<form method="post" action="loginOK">
  <div><label>User ID: </label><input type="text" name="userid" /></div>
  <div><label>Password: </label><input type="password" name="password" /></div>
  <buton type="submit">login</buton>
</form>
</div>
</body>
</html>
