<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: hyukjinchoi
  Date: 12/16/23
  Time: 4:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <form:form modelAttribute="item" method="POST" action="../editItemOK">
    <form:hidden path="sitem"/>
    <table id="edit">
      <tr><td>상품 이름</td><td><form:input path="name"></form:input></td></tr>
      <tr><td>상품 사진: 미완성</td><td><form:input path="photo"></form:input></td></tr>
      <tr><td>가격</td><td><form:input path="price"></form:input></td></tr>
      <tr><td>컬러</td><td><form:input path="color"></form:input></td></tr>
      <tr><td>사이즈</td><td><form:input path="size"></form:input></td></tr>
      <tr><td>남은수</td><td><form:input path="remaining"></form:input></td></tr>
    </table>
    <input type="submit" value="수정하기"/>
    <input type="button" value="취소하기" onclick="history.back()"/>
</form:form>
</body>
</html>

</body>
</html>
