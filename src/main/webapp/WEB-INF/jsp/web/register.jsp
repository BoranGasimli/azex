<%--
  Created by IntelliJ IDEA.
  User: raminorujov
  Date: 2019-04-10
  Time: 11:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width initial-scale=1.0">
    <title>Admincast bootstrap 4 &amp; angular 5 admin template, Шаблон админки | Register</title>
    <!-- GLOBAL MAINLY STYLES-->
    <link href="./assets/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="./assets/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet"/>
    <link href="./assets/vendors/themify-icons/css/themify-icons.css" rel="stylesheet"/>
    <!-- THEME STYLES-->
    <link href="assets/css/main.css" rel="stylesheet"/>
    <!-- PAGE LEVEL STYLES-->
    <link href="./assets/css/pages/auth-light.css" rel="stylesheet"/>

    <style>
        .reqError {
            color: red;
            font-family: Verdana;
            font-size: small;
        }
    </style>
</head>

<body class="bg-silver-300">
<div class="content">
    <div class="brand">
        <a class="link" href="index.html">AZEX</a>
    </div>
    <form:form id="register-form" action="/register" method="post" modelAttribute="registrationForm">
        <h2 class="login-title">Qeydiyyat</h2>
        <div class="row">

            <form:errors path="*" cssClass="reqError"/>

            <div class="col-6">
                <div class="form-group">
                    <span id="reqFirstName" class="reqError"></span>
                    <form:input path="name" cssClass="form-control" id="first_name" placeholder="Ad"/>
                    <form:errors path="name" cssClass="reqError"/>
                </div>
            </div>
            <div class="col-6">
                <div class="form-group">
                    <span id="reqLastName" class="reqError"></span>
                    <form:input path="surname" cssClass="form-control" id="last_name" placeholder="Soyad"/>
                    <form:errors path="surname" cssClass="reqError"/>
                </div>
            </div>
        </div>
        <div class="form-group">
            <span id="reqEmail" class="reqError"></span>
            <form:input path="email" cssClass="form-control" id="email" placeholder="Email" autocomplete="false"/>
            <form:errors path="email" cssClass="reqError"/>
        </div>
        <div class="form-group">
            <span id="reqPassword" class="reqError"></span>
            <form:password path="password" cssClass="form-control" id="password" placeholder="Şifrə" autocomplete="false"/>
            <form:errors path="password" cssClass="reqError"/>
        </div>
        <div class="form-group">
            <span id="reqPasswordConfirmation" class="reqError"></span>
            <form:password path="passwordConfirmation" cssClass="form-control" id="password_confirmation" placeholder="Şifrənin təkrarı" autocomplete="false"/>
            <form:errors path="passwordConfirmation" cssClass="reqError"/>
        </div>

        <div class="form-group">
            <button class="btn btn-info btn-block" type="submit" id="register">Qeydiyyatdan keç</button>
        </div>
        <div class="text-center">Profilin var?
            <a class="color-blue" href="/login">Daxil ol</a>
        </div>
    </form:form>
</div>


<!-- BEGIN PAGA BACKDROPS-->
<div class="sidenav-backdrop backdrop"></div>
<div class="preloader-backdrop">
    <div class="page-preloader">Loading</div>
</div>
<!-- END PAGA BACKDROPS-->

</body>

<!-- CORE PLUGINS -->
<script src="./assets/vendors/jquery/dist/jquery.min.js" type="text/javascript"></script>
<script src="./assets/vendors/popper.js/dist/umd/popper.min.js" type="text/javascript"></script>
<script src="./assets/vendors/bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>
<!-- CORE SCRIPTS-->
<script src="assets/js/app.js" type="text/javascript"></script>

<script>
    $(document).ready(function() {

        function getBaseUrl() {
            var re = new RegExp(/^.*\//);
            return re.exec(window.location.href);
        }

        function isEmail(email) {
            var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
            return regex.test(email);
        }

        function validateForm() {
            var firstName = $('#first_name').val();  //BOM
            var lastName = $('#last_name').val();
            var email = $('#email').val();
            var password = $('#password').val();
            var passwordConfirmation = $('#password_confirmation').val();

            if (firstName.trim() == '' ) {
                console.log('validate first name');
                document.getElementById("reqFirstName").innerHTML = "Daxil edin!";
                $('#first_name').focus();
                document.getElementById("first_name").style.borderColor = "red";
                return false;
            } else if (lastName.trim() =='') {
                console.log('validate last name');
                document.getElementById("reqLastName").innerHTML = "Daxil edin!";
                $('#last_name').focus();
                document.getElementById("last_name").style.borderColor = "red";
                return false;
            } else if (email.trim() =='') {
                console.log('validate email is empty');
                document.getElementById("reqEmail").innerHTML = "Daxil edin!";
                $('#email').focus();
                document.getElementById("email").style.borderColor = "red";
                return false;
            } else if(!isEmail(email)) {
                console.log('validate if valid email');
                document.getElementById("reqEmail").innerHTML = "Email doğru deyil!";
                $('#email').focus();
                document.getElementById("email").style.borderColor = "red";
                return false;
            } else if (password.trim() =='') {
                console.log('validate password');
                document.getElementById("reqPassword").innerHTML = "Daxil edin!";
                $('#password').focus();
                document.getElementById("password").style.borderColor = "red";
                return false;
            } else if (passwordConfirmation.trim() == '') {
                console.log('validate password confirmation');
                document.getElementById("reqPasswordConfirmation").innerHTML = "Daxil edin!";
                $('#password_confirmation').focus();
                document.getElementById("password_confirmation").style.borderColor = "red";
                return false;
            } else if(password.localeCompare(passwordConfirmation) != 0) {
                console.log('validate password == password confirmation');
                document.getElementById("reqPasswordConfirmation").innerHTML = "Şifrələr eyni deyil!";
                $('#password_confirmation').focus();
                document.getElementById("password_confirmation").style.borderColor = "red";
                return false;
            }


            $("#first_name, #last_name, #email, #password, #password_confirmation").on('keyup', function (e) {
                if ($(this).val() != '') {
                    $(this).css('border-color', '');
                    $(this).parent().parent().find('span').css("display", "none");
                }
            });

            return true;
        }

        // $("#register").on("click", function (e) {
        //     e.preventDefault();
        //
        //     console.log('register clicked');
        //     if (validateForm()) {
        //         console.log('form is valid');
        //         $("#register-form").submit();
        //     } else {
        //         console.log('form is not valid');
        //     }
        // });


        // $("#email").on('blur', function (e) {
        //     if (isEmail($("#email").val())) {
        //         var val = $("#email").val();
        //         $.ajax({
        //             url: getBaseUrl() + "/email?email=" + val,
        //             type: "get",
        //             dataType: 'json',
        //             success: function (data) {
        //                 console.log(data);
        //                 if (data) {
        //                     $("#reqEmail").text("artıq qeydiyyatdan keçib!");
        //                     $("#reqEmail").css("color", "red");
        //                     $("#reqEmail").show();
        //                     $("#register").attr("disabled", true);
        //                 } else {
        //                     $('#register').attr("disabled", false);
        //                 }
        //             }
        //         });
        //     }
        //     else {
        //         $("#reqEmail").text("Email doğru deyil!");
        //         $("#reqEmail").css("color", "red");
        //         $("#reqEmail").show();
        //     }
        //
        // });

    });

</script>


</html>
