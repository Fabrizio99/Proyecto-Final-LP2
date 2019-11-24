<%-- 
    Document   : CarroCompras
    Created on : 21/11/2019, 05:11:50 PM
    Author     : fabri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Vegefoods - Free Bootstrap 4 Template by Colorlib</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap" rel="stylesheet">

        <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
        <link rel="stylesheet" href="css/animate.css">

        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="css/magnific-popup.css">

        <link rel="stylesheet" href="css/aos.css">

        <link rel="stylesheet" href="css/ionicons.min.css">

        <link rel="stylesheet" href="css/bootstrap-datepicker.css">
        <link rel="stylesheet" href="css/jquery.timepicker.css">


        <link rel="stylesheet" href="css/flaticon.css">
        <link rel="stylesheet" href="css/icomoon.css">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body class="goto-here">
        <div class="py-1 bg-primary">
            <div class="container" style="background-color: #F08080;">
                <div class="row no-gutters d-flex align-items-start align-items-center px-md-0">
                    <div class="col-lg-12 d-block">
                        <div class="row d-flex">
                            <div class="col-md pr-4 d-flex topper align-items-center">
                                <div class="icon mr-2 d-flex justify-content-center align-items-center"><span class="icon-phone2"></span></div>
                                <span class="text">+51 999 999 999</span>
                            </div>
                            <div class="col-md pr-4 d-flex topper align-items-center">
                                <div class="icon mr-2 d-flex justify-content-center align-items-center"><span class="icon-paper-plane"></span></div>
                                <span class="text">contactos@kathiplass.com</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
            <div class="container">
                <a class="navbar-brand" href="index.jsp">Kathiplass</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="oi oi-menu"></span> Menu
                </button>

                <div class="collapse navbar-collapse" id="ftco-nav">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item"><a href="index.jsp" class="nav-link">Inicio</a></li>
                        <li class="nav-item"><a href="about.html" class="nav-link"></a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="todosProductos" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Productos</a>
                            <div class="dropdown-menu" aria-labelledby="dropdown04">
                                <a class="dropdown-item" href="insumos">Insumos</a>
                                <a class="dropdown-item" href="decoraciones">Decoraciones</a>
                                <a class="dropdown-item" href="accesorios">Accesorios</a>
                                <a class="dropdown-item" href="chocolateria">Chocolateria</a>
                            </div>
                        </li>
                        <li class="nav-item"><a href="nosotros" class="nav-link">Nosotros</a></li>
                        <li class="nav-item"><a href="contacto" class="nav-link">Contáctanos</a></li>
                        <li class="nav-item cta cta-colored active"><a href="carroCompras" class="nav-link"><span class="icon-shopping_cart"></span>[0]</a></li>

                    </ul>
                </div>
            </div>
        </nav>

        <div class="hero-wrap hero-bread" style="background-color: white ;padding: 0.1px">
            <div class="container">
                <div class="row justify-content-center mb-3 pb-3">
                    <div class="col-md-12 heading-section text-center ftco-animate">
                        <h2 class="mb-4" style="font-size: 60px">Mis Compras</h2>
                    </div>
                </div>  
            </div>
        </div>

        <section class="ftco-section ftco-cart">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 ftco-animate">
                        <div class="cart-list">
                            <table class="table">
                                <thead class="thead-primary">
                                    <tr class="text-center">
                                        <th>&nbsp</th>
                                        <th>&nbsp;</th>
                                        <th>Nombre del producto</th>
                                        <th>Precio</th>
                                        <th>Cantidad</th>
                                        <th>Total</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="text-center product-item">
                                        <td class="product-remove"><a href="#" class="remove-button"><span class="ion-ios-close"></span></a></td>

                                        <td class="image-prod"><div class="img" style="background-image:url(images/blancaFlor.jpg);"></div></td>

                                        <td class="product-name">
                                            <h3>Blanca Flor</h3>
                                            <p>Harina panadera</p>
                                        </td>

                                        <td class="price">S/5.99</td>

                                        <td class="quantity">
                                            <div class="input-group mb-3">
                                                <span class="input-group-btn mr-2">
                                                    <button type="button" class="quantity-left-minus btn"  data-type="minus" data-field="">
                                                        <i class="ion-ios-remove" style="color: grey"></i>
                                                    </button>
                                                </span>
                                                <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1" min="1" max="100">
                                                <span class="input-group-btn ml-2">
                                                    <button type="button" class="quantity-right-plus btn" data-type="plus" data-field="">
                                                        <i class="ion-ios-add" style="color: grey"></i>
                                                    </button>
                                                </span>
                                            </div>
                                        </td>

                                        <td class="total"></td>
                                    </tr>
                                    <tr class="text-center product-item">
                                        <td class="product-remove"><a href="#" class="remove-button"><span class="ion-ios-close"></span></a></td>

                                        <td class="image-prod"><div class="img" style="background-image:url(images/blancaFlor.jpg);"></div></td>

                                        <td class="product-name">
                                            <h3>Blanca Flor 2</h3>
                                            <p>Harina panadera</p>
                                        </td>

                                        <td class="price">S/7.99</td>

                                        <td class="quantity">
                                            <div class="input-group mb-3">
                                                <span class="input-group-btn mr-2">
                                                    <button type="button" class="quantity-left-minus btn"  data-type="minus" data-field="">
                                                        <i class="ion-ios-remove" style="color: grey"></i>
                                                    </button>
                                                </span>
                                                <input type="text" id="quantity" name="quantity" class="form-control input-number" value="2" min="1" max="100">
                                                <span class="input-group-btn ml-2">
                                                    <button type="button" class="quantity-right-plus btn" data-type="plus" data-field="">
                                                        <i class="ion-ios-add" style="color: grey"></i>
                                                    </button>
                                                </span>
                                            </div>
                                        </td>
                                        <td class="total"></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="row justify-content-end">

                    <div class="col-lg-4 mt-5 cart-wrap ftco-animate">
                        <div class="cart-total mb-3">
                            <h3>Total compra</h3>
                            <p class="d-flex">
                                <span>Subtotal</span>
                                <span id="subtotal"></span>
                            </p>
                            <!--<p class="d-flex">
                                <span>Delivery</span>
                                <span>$0.00</span>
                            </p>-->
                            <!--<p class="d-flex">
                                <span>Discount</span>
                                <span>$3.00</span>
                            </p>-->
                            <hr>
                            <p class="d-flex total-price">
                                <span>Total</span>
                                <span id="total"></span>
                            </p>
                        </div>
                        <p><a href="caja" class="btn btn-primary py-3 px-4">Proceder a pagar</a></p>
                    </div>
                </div>
            </div>
        </section>

        <footer class="ftco-footer ftco-section">
            <div class="container">
                <div class="row">
                    <div class="mouse">
                        <a href="#" class="mouse-icon">
                            <div class="mouse-wheel"><span class="ion-ios-arrow-up"></span></div>
                        </a>
                    </div>
                </div>
                <div class="row mb-5">
                    <div class="col-md">
                        <div class="ftco-footer-widget mb-4">
                            <h2 class="ftco-heading-2">Kathiplass</h2>
                            <p>Venta de productos de calidad y a un buen precio.</p>
                            <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
                                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md">
                        <div class="ftco-footer-widget mb-4 ml-md-5">
                            <h2 class="ftco-heading-2">Menú</h2>
                            <ul class="list-unstyled">
                                <li><a href="#" class="py-2 d-block">Nosotros</a></li>
                                <li><a href="#" class="py-2 d-block">Contáctanos</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md">
                        <div class="ftco-footer-widget mb-4">
                            <h2 class="ftco-heading-2">¿Alguna consulta?</h2>
                            <div class="block-23 mb-3">
                                <ul>
                                    <li><span class="icon icon-map-marker"></span><span class="text">Mercado Plaza Villa Sur, puesto A-29. Villa el Salvador</span></li>
                                    <li><a href="#"><span class="icon icon-phone"></span><span class="text">+51 999 999 999</span></a></li>
                                    <li><a href="#"><span class="icon icon-envelope"></span><span class="text">contactos@kathiplass.com</span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 text-center">

                        <p>
                            Copyright &copy;<script>document.write(new Date().getFullYear());</script> Todos los derechos reservados | Página web hecha por </i><a href="#" target="_blank" style="color: #F08080;">ANFAVA</a>
                        </p>
                    </div>
                </div>
            </div>
        </footer>



        <!-- loader -->
        <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


        <script src="js/jquery.min.js"></script>
        <script src="js/jquery-migrate-3.0.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.easing.1.3.js"></script>
        <script src="js/jquery.waypoints.min.js"></script>
        <script src="js/jquery.stellar.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/aos.js"></script>
        <script src="js/jquery.animateNumber.min.js"></script>
        <script src="js/bootstrap-datepicker.js"></script>
        <script src="js/scrollax.min.js"></script>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
        <script src="js/google-map.js"></script>
        <script src="js/main.js"></script>

        <script>
            /*$(document).ready(function () {

                var quantitiy = 0;
                $('.quantity-right-plus').click(function (e) {

                    // Stop acting like a button
                    e.preventDefault();
                    // Get the field name
                    var quantity = parseInt($('#quantity').val());

                    // If is not undefined

                    $('#quantity').val(quantity + 1);


                    // Increment

                });

                $('.quantity-left-minus').click(function (e) {
                    // Stop acting like a button
                    e.preventDefault();
                    // Get the field name
                    var quantity = parseInt($('#quantity').val());

                    // If is not undefined

                    // Increment
                    if (quantity > 0) {
                        $('#quantity').val(quantity - 1);
                    }
                });

            });*/
            
            var removeButtons = Array.from(document.getElementsByClassName('remove-button'))
            removeButtons.forEach(function(element){
                element.addEventListener('click',function(event){
                    element.parentElement.parentElement.remove()
                    updateTotal();
                })
            })
            var quantityProducts = Array.from(document.getElementsByClassName('quantity-left-minus'))
            quantityProducts.forEach(function(element){
                element.addEventListener('click',function(){
                    var quantity = parseInt(element.parentElement.parentElement.getElementsByClassName('input-number')[0].value)
                    if(quantity>1){
                        console.log('es mayor o igual a 1')
                        quantity=quantity-1
                    }else{
                        console.log('no')
                    }
                    
                    element.parentElement.parentElement.getElementsByClassName('input-number')[0].value = quantity
                    updateTotal()
                })
            })
            function updateTotal(){
                var productItems = Array.from(document.getElementsByClassName('product-item'));
                var total = 0;
                productItems.forEach(function(element){
                    var price = parseFloat(element.getElementsByClassName('price')[0].innerHTML.replace('S/',''));
                    //console.log(price)
                    var quantity = parseFloat(element.getElementsByClassName('input-number')[0].value);
                    //console.log(quantity)
                    element.getElementsByClassName('total')[0].innerHTML='S/'+price*quantity
                    var priceTotal = parseFloat(element.getElementsByClassName('total')[0].innerHTML.replace('S/',''));
                    total+=priceTotal;
                })
                var subtotal = document.getElementById('subtotal');
                //console.log(subtotal.innerHTML)
                var totalPrice = document.getElementById('total');
                subtotal.innerHTML='S/'+total;
                totalPrice.innerHTML='S/'+total;
                
            }
            updateTotal()
                                
        </script>

    </body>
</html>