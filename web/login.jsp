
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!--Style Sheet-->
        <link rel="stylesheet" href="./resources/style.css">

        <!--Bootstrap-->
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body id="LoginForm">
        <div class="container">
            <div class="container contact-form">
                <div class="contact-image">
                    <img src="https://png.pngtree.com/element_pic/17/07/27/bd157c7c747dc708790aa64b43c3da35.jpg" alt="message"/>
                </div>
                <form action="login" method="post">
                    <h3>Book Ordering System</h3>
                    <p class="h4">System Login</p>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <input type="text" name="username" class="form-control" placeholder="User Name *" value="" />
                            </div>
                            <div class="form-group">
                                <input type="password" name="password" class="form-control" placeholder="Your Password *" value="" />
                            </div>

                            <div class="form-group btn_submit">
                                <input type="submit" name="btnSubmit" class="btnContact" value="LogIn" id="submit-btn"/>
                            </div>
                        </div>

                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
