<%@page import="Entity.Item"%>
<%@page import="Entity.Category" %>
<%@page import="Entity.Product" %>
<%@page import="Model.DAOCategory" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/edit.css">

        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <title>Edit Product</title>
    </head>

    <body>
        <%
            Item item = (Item) request.getAttribute("item");
            Product product = (Product) request.getAttribute("product");
            String error = (String) request.getAttribute("error");
            if (error != null && error.compareTo("") != 0){
               out.println(error);
            }
        %>
        <div class="container">
            <h1 style="text-align: center;">EDIT PRODUCT</h1>
            <h2><%=product.getProductName()%></h2>
            <div class="left">
                <ul class="editNav">
                    <li class="editNav-group">
                        <h2>PRODUCT INFORMATION</h2>
                        <ul class="editNav-group-sections">
                            <li class="editNav-section">
                                <a href="#basicInfo">Basic Information</a>
                            </li>
                            <li class="editNav-section">
                                <a href="#category">Category</a>
                            </li>
                            <li class="editNav-section">
                                <a class="editLink" href="#images">Images</a>
                            </li>
                        </ul>
                    </li>

                    <li class="editNav-group">
                        <h2>PRODUCT OPTIONS</h2>
                        <ul class="editNav-group-sections">
                            <li class="editNav-section">
                                <a href="#variations">Variations</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>

            <div class="right">
                <form action="<%=request.getContextPath()%>/EditProducts?productID=<%=product.getProductID()%>&size=<%=item.getSize()%>" method="post">
                    <!--Product Information - Product - Product-->
                    <div>
                        <div class="group-title">
                            <h2>Product Information</h2>
                        </div>
                        <div class="group-sections">
                            <div class="panel">
                                <!--Basic Information-->
                                <div class="panel-body" id="basicInfo">
                                    <div class="panel-header">
                                        <h2>Basic Information</h2>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-field">
                                            <label class="form-label" id="productLabel-name" for="productInput-name">
                                                <span>Product ID</span>
                                                <!--<span class="form-small-required">*</span>-->
                                            </label>
                                            <div class="form-input-container">
                                                <input class="form-input" name="productInput-name"
                                                       value="<%=product.getProductID()%>" type="text" disabled>
                                            </div>
                                        </div>
                                        <div class="form-field">
                                            <label class="form-label"  for="">
                                                <span>Product Name</span>
                                                <span class="form-small-required">*</span>
                                            </label>
                                            <div class="form-input-container">
                                                <input class="form-input" name="productName" type="text"
                                                       value="<%=product.getProductName()%>"  required>
                                            </div>
                                        </div>
                                        <div class="form-field">
                                            <label class="form-label"  for="">
                                                <span>Price</span>
                                                <span class="form-small-required">*</span>
                                            </label>
                                            <div class="form-input-container">
                                                <input class="form-input" name="" type="number" value="<%=product.getPrice()%>" required>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--Category-->
                                <div class="panel-body" id="category">
                                    <div class="panel-header">
                                        <h2>Category</h2>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-field">
                                            <label class="form-label"  for="">
                                                <span>Category</span>
                                                <!--<span class="form-small-required">*</span>-->
                                            </label>
                                            <div class="form-input-container">
                                                <%
                                                    DAOCategory dao = new DAOCategory();
                                                    int cateID = product.getCateID();
                                                    String cateName = dao.getCategory(cateID).getCateName();
                                                %>
                                                <input class="form-input"  name="" type="text" value="<%=cateName%>" disabled>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--Images-->
                                <div class="panel-body" id="images">
                                    <h2>Images</h2>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!--Product Options - Item - Prod_Variant-->
                    <div>
                        <div class="group-title">
                            <h2>Product Options</h2>
                        </div>
                        <div class="group-sections">
                            <div class="panel">
                                <div class="panel-body" id="variations">
                                    <div class="panel-header">
                                        <h2>Variations</h2>
                                    </div>
                                    <div class="form-row">
                                        <!--Size-->
                                        <div class="form-field">
                                            <label class="form-label" id="productLabel-name" for="productInput-name">
                                                <span>Size</span>
                                                <!--<span class="form-small-required">*</span>-->
                                            </label>
                                            <div class="form-input-container">
                                                <input class="form-input" name="size"
                                                       value="<%=item.getSize()%>" type="number" disabled>
                                            </div>
                                        </div>

                                        <!--Product ID-->
                                        <div class="form-field">
                                            <label class="form-label"  for="">
                                                <span>Product ID</span>
                                                <!--<span class="form-small-required">*</span>-->
                                            </label>
                                            <div class="form-input-container">
                                                <input class="form-input"  name="" type="text" value="<%=item.getProduct().getProductID()%>"
                                                       disabled>
                                            </div>
                                        </div>

                                        <!--Stock-->
                                        <div class="form-field">
                                            <label class="form-label" for="">
                                                <span>Stock</span>
                                                <span class="form-small-required">*</span>
                                            </label>
                                            <div class="form-input-container">
                                                <input class="form-input" name="stock" type="number" value="<%=item.getQuantity()%>" required>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <button type="submit">Save</button>
                </form>
            </div>
        </div>

        <script>
            $(document).ready(function () {
                $('.dropdown ul>li').click(function () {
                    $('.dropdown ul>li').each(function () {
                        $(this).removeClass('drop-selected');
                    });
                    $(this).toggleClass('drop-selected');
                    $('.dropdown>span').text($(this).attr("val"))
                });
            });
        </script>
    </body>

</html>