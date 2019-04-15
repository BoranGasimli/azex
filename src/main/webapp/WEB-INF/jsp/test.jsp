<%--
  Created by IntelliJ IDEA.
  User: raminorujov
  Date: 2019-04-15
  Time: 11:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Test Form Processing</title>

    <style>
        .error {
            color: red;
            font-family: Verdana;
            font-size: small;
        }
    </style>

</head>
<body>

    <h2>Form validation with Spring</h2>
    <form:form action="/test" method="post" modelAttribute="testFormModel">

        <div class="form-group">
            <label for="name">Name:</label>
            <form:input path="name" cssClass="form-control" id="name"/>
            <form:errors path="name" cssClass="error"/>
        </div>

        <div class="form-group">
            <label for="surname">Surname:</label>
            <form:input path="surname" cssClass="form-control" id="surname"/>
            <form:errors path="surname" cssClass="error"/>
        </div>


        <div class="form-group">
            <label for="email">Email:</label>
            <form:input path="email" cssClass="form-control" id="email"/>
            <form:errors path="email" cssClass="error"/>
        </div>

        <div class="form-group">
            <input type="submit" value="Save"/> &nbsp;
            <input type="reset" value="Clear">
        </div>



    </form:form>
</body>
</html>
