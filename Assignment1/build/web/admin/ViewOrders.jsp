<%-- 
    Document   : ViewOrders
    Created on : Mar 16, 2023, 4:32:46 PM
    Author     : ASUS
--%>

<%@page import="Entity.User"%>
<%@page import="java.util.ArrayList"%>
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
                                <i class="fa-sharp fa-solid fa-pen-to-square"></i>
                                <span>Add Products</span>
                            </a>
                        </li>
                        <li class="" style="margin-top: 0px;">
                            <a href="ViewCustomers" id="getStarted">
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
                    <button class="tablinks" onclick="openCity(event, 'view')" id="defaultOpen">View Customers</button>
                    <!--<button class="tablinks" onclick="openCity(event, 'add')">Add Customers</button>-->
                </div>

                <!-- Tab content -->
                <div id="view" class="tabcontent">
                    <!--<h2>View Customers</h2>-->
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">EMAIL</th>
                                <th scope="col">PASSWORD</th>
                                <th scope="col">HO</th>
                                <th scope="col">TEN</th>
                                <th scope="col">DOB</th>
                                <th scope="col">ADDRESS</th>
                                <th scope="col">GENDER</th>
                                <th scope="col">PHONE</th>
                                <th scope="col">ROLE</th>
                                <th colspan="2">ACTION</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
//                                int row = 0;
                                ArrayList<User> list = (ArrayList<User>) request.getAttribute("ViewCustomers");
                                
                                for(int i = 0; i < list.size(); i++) {
                                    User user = list.get(i);
                            %>
                            <tr class="product-row" style="vertical-align: middle;">
                                <td><%= user.getUserId()%></td>
                                <td><%= user.getUserName()%></td>
                                <td><%= user.getPassword()%></td>
                                <td><%= user.getHo()%></td>
                                <td><%= user.getTen()%></td>
                                <td><%= user.getDOB()%></td>
                                <td><%= user.getAddress()%></td>
                                <td><%= user.getGioitinh()%></td>
                                <td><%= user.getSdt()%></td>
                                <td><%= user.getRole()%></td>
                                <td>
                                    <a href="">Edit</a>
                                </td>
                                <td>
                                    <button>
                                        <a href="">
                                            <i class="fa-solid fa-trash"></i>
                                        </a>
                                    </button>
                                </td>
                            </tr>
                            <%
//                                row++;
                                }
                            %>
                        </tbody>
                    </table>
                </div>

                <div id="add" class="tabcontent">
                    <h2>Add Customers</h2>
                    <p>Paris is the capital of France.</p>
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