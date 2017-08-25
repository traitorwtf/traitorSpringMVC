<!-- обратите внимание на spring тэги -->
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>

<head>
  <title>Index Page</title>
  <link href="/resources/css/home.css" rel="stylesheet" type="text/css" />
</head>

<body>
<spring:form cssClass="box login boxBody"  method="post"  modelAttribute="userJSP" action="check-user">

  Name:
  <spring:input path="name"/> <br/>
  Password:
  <spring:input path="password"/>   <br/>
  <spring:button>Next Page</spring:button>

</spring:form>

<%--<form class="box login">--%>
  <%--<fieldset class="boxBody">--%>
    <%--<label>Username</label>--%>
    <%--<input type="text" tabindex="1" placeholder="username" required/>--%>
    <%--<label><a href="#" class="rLink" tabindex="5">Forget your password?</a>Password</label>--%>
    <%--<input type="password" tabindex="2" required placeholder="password"/>--%>
  <%--</fieldset>--%>
  <%--<footer>--%>
    <%--<label><input type="checkbox" tabindex="3">Keep me logged in</label>--%>
    <%--<input type="submit" class="btnLogin" value="Login" tabindex="4">--%>
  <%--</footer>--%>
<%--</form>--%>

</body>

</html>
