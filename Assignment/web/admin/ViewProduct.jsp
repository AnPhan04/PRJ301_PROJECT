<%-- 
    Document   : EditProduct
    Created on : Mar 9, 2023, 9:37:37 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Bitis Admin</title>
        <!-- Bootstrap -->
        <link href="../css/bootstrap.min.css" rel="stylesheet">
        <script src="https://kit.fontawesome.com/d532025e5e.js" crossorigin="anonymous"></script>
        <!-- Embed CSS  here-->
        <link rel="stylesheet" type="text/css" href="../css/admin/admin.css">
        <!-- <link rel="stylesheet" type="text/css" href="../fonts/css/all.min.css"> -->
    </head>

    <body>
        <header class="main-header" style="max-width: 250px;">
            <a href="/home.html" class="logo">
                <img src="images/1.jpg" style="width: 94%; padding-top: 10px;">
            </a>
        </header>
        <div>
            <aside class="main-sidebar">
                <div class="upgrade">
                    <div id="upgrade" class="max-upgrade" style="background-color: rgb(38, 201, 123);">
                        <div class="badge-text">
                            anpthe173136@fpt.edu.vn
                        </div>
                    </div>
                </div>

                <div class="slimScrollDiv" style="overflow: hidden; width: auto; height: 839px;">
                    <!-- <section class="sidebar" style="margin-top: 15px; overflow: hidden; width: auto; height: 849px;"> -->
                    <ul class="sidebar-menu tree" style="min-height: 500px;">
                        <li class="" style="margin-top: 0px;">
                            <a id="" style="right: 8%; margin-top: 15px; background-color: white;">
                                <span style="color: rgb(133, 146, 158); margin-left: 15px; font-size: 12px;">MAIN MENU</span>
                            </a>
                        </li>
                        <li class="" style="margin-top: 0px;">
                            <a href="" id="">
                                <i class="fa-solid fa-file"></i>
                                <span>View Products</span>
                            </a>
                        </li>
                        <li class="" style="margin-top: 0px;">
                            <a href="add.html" id="">
                                <i class="fa-sharp fa-solid fa-pen-to-square"></i>
                                <span>Add Products</span>
                            </a>
                        </li>
                        <li class="" style="margin-top: 0px;">
                            <a href="" id="getStarted">
                                <i class="fa-sharp fa-solid fa-percent"></i>
                                <span>Customers</span>
                            </a>
                        </li>
                    </ul>
                    </section>
                </div>
            </aside>

            <aside class="content-wrapper">
                <!-- Tab links -->
                <div class="tab">
                    <button class="tablinks" onclick="openCity(event, 'view')" id="defaultOpen">View Products</button>
                    <button class="tablinks" onclick="openCity(event, 'add')">Add Products</button>
                </div>

                <!-- Tab content -->
                <div id="view" class="tabcontent">
                    <h2>View Products</h2>
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">SẢN PHẨM</th>
                                <th scope="col">SIZE</th>
                                <th scope="col">SỐ LƯỢNG</th>
                                <th scope="col">GIÁ</th>
                                <th colspan="2">ACTION</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="product-row" id="row1" style="vertical-align: middle;">
                                <td>1</td>
                                <td class="prod">
                                    <!-- <div class=""> -->
                                    <div class="prod-name">
                                        <div class="prod-img">
                                            <img alt="Test product"
                                                 src="https://product.hstatic.net/1000230642/product/h07700xam__3__cc8a01779a8341e1b60552d9252ffd4f.jpg"
                                                 class="">
                                        </div>
                                        <div class="prod-link">
                                            <a href="https://bitis.com.vn/products/giay-the-thao-nam-biti-s-hunter-x-1-0-festive-armor-grey-dsmh07700xam-xam"
                                               target="_top" class="">Test product</a>
                                        </div>
                                    </div>
                                    <!-- </div> -->
                                </td>

                                <td>40</td>
                                <td>1000</td>
                                <td>500,000</td>
                                <td><a href="edit.html">Edit</a></td>
                                <td><button><i class="fa-solid fa-trash" onclick="removeRow()"></i></button></td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <div id="add" class="tabcontent">
                    <h2>Add Products</h2>
                </div>
            </aside>
        </div>
        <script src="../js/admin.js"></script>
        <script>
            // Get the element with id="defaultOpen" and click on it
            document.getElementById("defaultOpen").click();
        </script>
    </body>
</html>
