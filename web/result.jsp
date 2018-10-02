    
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!--Style Sheet-->
        <link rel="stylesheet" href="./resources/style.css"/>

        <!--Bootstrap CSS Framework-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

        <!--JQuery-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="http://malsup.github.com/jquery.form.js"></script>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result</title>
    </head>
    <body>
        
        <%
            session.getAttribute("result_value");
        %>


        <div class="container contact-form">
            <div class="contact-image">
                <img src="http://www.tunbridgewells.gov.uk/__data/assets/image/0006/64725/tik.png" alt="message"/>
            </div>
            <form method="post">
                <h3>Successful</h3>
                <div class="row" style="text-align: center">
                    <div class="col-md-12">
                        <div class="form-group">
                            Your Feedback has been successfully recoded!
                        </div>
                        <div class="form-group">
                            ${result_value}
                        </div>

                        <div class="form-group btn_submit">
                            <a type="submit" name="btnSubmit" class="btnContact" href="http://localhost:8080/csrfDemo/" value="Home" id="submit-btn">Home</a>
                        </div>
                    </div>

                </div>
            </form>
        </div>
    </body>
</html>
