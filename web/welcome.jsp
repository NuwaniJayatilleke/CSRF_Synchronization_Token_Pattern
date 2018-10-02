<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Message</title>
    </head>
    <body> 
        <div class="container contact-form">
            <div class="contact-image">
                <img src="http://www.rubber-in-a-can.com/portals/0/Images/order_online.png" alt="message"/>
            </div>
            <form action="Validator" method="post">
                <h3>Oder a Book</h3>
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <input type="text" name="bookname" class="form-control" placeholder="Book Name *" value="" />
                        </div>
                        <div class="form-group">
                            <input type="number" name="year" class="form-control" placeholder="Year *" value="" />
                        </div>
                        
                        <div class="form-group btn_submit">
                            <input type="submit" name="btnSubmit" class="btnContact" value="Place Order" id="submit-btn"/>
                        </div>
                    </div>
                    
                </div>
            </form>
        </div>
    </body>

    <script>
        window.addEventListener('load', function () {
            console.log('All assets are loaded');
            retrieveToken();
        });
        function retrieveToken() {

            $.ajax({
                type: "GET",
                url: "http://localhost:8080/csrfDemo/CSRF_Genrator",
                contentType: "text/json",
                success: function (data) {
                    $("#submit-btn").before('<input type="hidden" name="csrf" value="' + data + '">');
                },
                error: function (err) {
                    console.log(err);
                }
            });
        }
    </script>

</body>
</html>
