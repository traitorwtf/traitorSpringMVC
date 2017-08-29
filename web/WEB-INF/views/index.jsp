<!-- обратите внимание на spring тэги -->
<%@ taglib prefix="spr-form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>

<head>
  <title>TRAITOR's Page</title>
  <link href="/resources/css/home.css" rel="stylesheet" type="text/css" />
</head>

<body>
<spr-form:form cssClass="box login"  method="POST"  modelAttribute="userJSP" action="check-user">

  <fieldset class="boxBody">
    <spr-form:label path="name">Name:</spr-form:label>
    <spr-form:input path="name"/>
    
    <spr-form:label path="password">Password:</spr-form:label>
    <spr-form:password path="password"/>
  </fieldset>

  <footer>
    <input type="submit" class="btnLogin" value="login">
  </footer>


</spr-form:form>

</body>

</html>
