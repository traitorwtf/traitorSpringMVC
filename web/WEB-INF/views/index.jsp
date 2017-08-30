<!-- обратите внимание на spring тэги -->
<%@ taglib prefix="spr-form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spr" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>

<head>
  <title>TRAITOR's Page</title>
  <link href="/resources/css/home.css" rel="stylesheet" type="text/css" />

  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

  <script type="text/javascript">
      function doAjax() {
          $.ajax({
              url: 'checkStrength',
              data: ({password : $('#password').val()}),
              success: function(data) {
                  $('#strengthValue').html(data);
              }
          });
      }
  </script>
</head>

<body>
<spr-form:form cssClass="box login"  method="POST"  modelAttribute="userJSP" action="check-user">

  <fieldset class="boxBody">
    <span style="float: right">
      <a href="?lang=en">en</a>
      <a href="?lang=ru">ru</a>
    </span>

    <spr-form:label path="name"><spr:message code="username" /></spr-form:label>
    <spr-form:input path="name"/>
    <spr-form:errors path="name" cssClass="error" />

    <spr-form:label path="password"><spr:message code="password" /></spr-form:label>
    <spr-form:password path="password" onkeyup="doAjax()"/>
    <spr-form:errors path="password" cssClass="error" />
    <span style="float: right" id="strengthValue"> </span>
  </fieldset>

  <footer>
    <input type="submit" class="btnLogin" value="login">
  </footer>


</spr-form:form>

</body>

</html>
