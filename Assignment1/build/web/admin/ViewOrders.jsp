<%-- 
    Document   : ViewOrders
    Created on : Mar 16, 2023, 4:32:46 PM
    Author     : ASUS
--%>

<%@page import="Entity.Order"%>
<%@page import="Entity.OrderDetail" %>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Map" %>
<%@page import="java.util.HashMap" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Bitis Admin</title>
        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <script src="https://kit.fontawesome.com/d532025e5e.js" crossorigin="anonymous"></script>
        <!-- Embed CSS  here-->
        <link rel="stylesheet" type="text/css" href="css/admin.css">
        <link rel="stylesheet" type="text/css" href="css/customers.css">
        <!-- <link rel="stylesheet" type="text/css" href="../fonts/css/all.min.css"> -->
    </head>

    <body>
        <!-- <header class="main-header" style="max-width: 250px;">
            <a href="/home.html" class="logo">
                <img src="../images/1.jpg" style="width: 94%; padding-top: 10px;">
            </a>
        </header> -->
        <div>
            <aside class="main-sidebar">
                <div class="slimScrollDiv" style="overflow: hidden; width: auto; height: 839px;">
                    <ul class="sidebar-menu tree" style="min-height: 500px;">
                        <li class="" style="margin-top: 0px;">
                            <a id="" style="right: 8%; margin-top: 15px; background-color: white;">
                                <span style="color: rgb(133, 146, 158); margin-left: 15px; font-size: 12px;">MAIN MENU</span>
                            </a>
                        </li>
                        <li class="" style="margin-top: 0px;">
                            <a href="ViewProducts" id="">
                                <i class="fa-solid fa-file"></i>
                                <span>Manage Products</span>
                            </a>
                        </li>
                        <li class="" style="margin-top: 0px;">
                            <a href="AddProducts" id="">
                                <i class="fa-sharp fa-solid fa-pen-to-square" style="width: 10.5px;"></i>
                                <span>Add Products</span>
                            </a>
                        </li>
                        <li class="" style="margin-top: 0px;">
                            <a href="ViewCustomers" id="getStarted">
                                <i class="fa-solid fa-users" style="width: 10.5px;"></i>
                                <span>Customers</span>
                            </a>
                        </li>
                        <li class="" style="margin-top: 0px;">
                            <a href="ViewOrders" id="getStarted">
                                <i class="fa-sharp fa-solid fa-shopping-bag"></i>
                                <span>Orders</span>
                            </a>
                        </li>
                    </ul>
                    </section>
                </div>
            </aside>

            <aside class="content-wrapper">

                <!-- Tab links -->
                <div class="tab">
                    <button class="tablinks" onclick="openCity(event, 'view')" id="defaultOpen">View Customers</button>
                    <!--<button class="tablinks" onclick="openCity(event, 'add')">Add Customers</button>-->
                </div>

                <!-- Tab content -->
                <div id="view" class="tabcontent">
                    <!--<h2>View Customers</h2>-->
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">ORDER ID</th>
                                <th scope="col">DATE</th>
                                <th scope="col">CUSTOMER ID</th>
                                <th scope="col">QTY</th>   
                                <th scope="col">TOTAL</th>
                                <!--<th scope="col">ACTION</th>-->
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                Map<Integer, OrderDetail> prodDetails = (Map<Integer, OrderDetail>) request.getAttribute("prodDetails");
//                                OrderDetail od = prodDetails.get(listOrder.getOrderID());
                                ArrayList<Order> list = (ArrayList<Order>) request.getAttribute("listOrders");
                                
                                for(int i = 0; i < list.size(); i++) {
                                    Order order = list.get(i);
                            %>
                            <tr class="product-row" style="vertical-align: middle;">
                                <td><%=order.getOrderID()%></td>
                                <td><%=order.getOrderDate()%></td>
                                <td><%=order.getUserID()%></td>
                                <td><%=prodDetails.get(order.getUserID()).getQuantity()%></td>
                                <td><%=prodDetails.get(order.getUserID()).getTotalPrice()%></td>
                            </tr>
                            <%
                                }
                            %>
                        </tbody>
                    </table>
                </div>
            </aside>
        </div>
        <script src="js/admin.js"></script>
        <script>
                        // Get the element with id="defaultOpen" and click on it
                        document.getElementById("defaultOpen").click();
        </script>
    </body>

</html>