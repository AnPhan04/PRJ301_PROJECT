<%-- 
    Document   : AddProducts
    Created on : Mar 13, 2023, 10:18:02 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../css/edit.css">

        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <title>Edit Product</title>
    </head>

    <body>
        
        <div class="container">
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
                <form action="<%=request.getContextPath()%>/AddProducts" method="post">
                    <div>
                        <div class="group-title">
                            <h2>Product Information</h2>
                        </div>
                        <div class="group-sections">
                            <div class="panel">
                                <div class="panel-body" id="basicInfo">
                                    <div class="panel-header">
                                        <h2>Basic Information</h2>
                                    </div>
                                    <div class="form-row">
                                        <!--ProductID-->
                                        <div class="form-field">
                                            <label class="form-label" for="productID">
                                                <span>Product ID</span>
                                                <span class="form-small-required">*</span>
                                            </label>
                                            <div class="form-input-container">
                                                <input class="form-input" name="productID" placeholder="Sample Product ID" type="text" required>
                                            </div>
                                        </div>

                                        <!--ProductName-->
                                        <div class="form-field">
                                            <label class="form-label" for="">
                                                <span>Product Name</span>
                                                <span class="form-small-required">*</span>
                                            </label>
                                            <div class="form-input-container">
                                                <input class="form-input" name="name" type="text" placeholder="Sample Product Name" required>
                                            </div>
                                        </div>

                                        <!--ProductPrice-->
                                        <div class="form-field">
                                            <label class="form-label" for="price">
                                                <span>Price</span>
                                                <span class="form-small-required">*</span>
                                            </label>
                                            <div class="form-input-container">
                                                <input class="form-input" name="price" type="number" placeholder="500,000.00" required>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel-body" id="category">

                                    <!--Category-->
                                    <div class="panel-header">
                                        <h2>Category</h2>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-field">
                                            <label class="form-label" for="">
                                                <span>Category</span>
                                                <span class="form-small-required">*</span>
                                            </label>
                                            <div class="form-input-container">
                                                <div class="custom-select">
                                                    <select name="category" id="custom-select">
                                                        <option value="1">MDEP</option>
                                                        <option value="2">MRUN</option>
                                                        <option value="3">MSC</option>
                                                        <option value="4">MSP</option>
                                                        <option value="5">MHT</option>
                                                        <option value="6">MSD</option>
                                                        <option value="7">MTAY</option>
                                                        <option value="8">FMDEP</option>
                                                        <option value="9">FMDOLL</option>
                                                        <option value="10">FMRUN</option>
                                                        <option value="11">FMSP</option>
                                                        <option value="12">FMHT</option>
                                                        <option value="13">FMSD</option>
                                                        <option value="14">FMFA</option>
                                                        <option value="15">FMPUR</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel-body" id="images">
                                    <div class="form-field">
                                        <label class="form-label" for="productID">
                                            <span>Images</span>
                                            <span class="form-small-required">*</span>
                                        </label>
                                        <div class="form-input-container">
                                            <input class="form-input" name="image" placeholder="Image URL" type="text" required>
                                        </div>
                                    </div>
                                </div>
                                <!--ProductID-->

                            </div>
                        </div>
                    </div>
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
                                        <div class="form-field">
                                            <label class="form-label" for="size">
                                                <span>Size</span>
                                                <span class="form-small-required">*</span>
                                            </label>
                                            <div class="form-input-container">
                                                <input class="form-input" name="size" placeholder="40" type="number" required>
                                            </div>
                                        </div>
                                        <div class="form-field">
                                            <label class="form-label" for="productID">
                                                <span>Product ID</span>
                                                <span class="form-small-required">*</span>
                                            </label>
                                            <div class="form-input-container">
                                                <input class="form-input" name="productID" type="text" placeholder="Sample SKU" required>
                                            </div>
                                        </div>
                                        <div class="form-field">
                                            <label class="form-label" for="stock">
                                                <span>Stock</span>
                                                <span class="form-small-required">*</span>
                                            </label>
                                            <div class="form-input-container">
                                                <input class="form-input" name="stock" type="number" placeholder="500" required>
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
