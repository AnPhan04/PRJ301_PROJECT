<%-- 
    Document   : Home
    Created on : Feb 16, 2023, 4:12:46 PM
    Author     : Tran Tuan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib  prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title></title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Embed CSS  here-->
        <link rel="stylesheet" type="text/css" href="css/1.css">

        <link rel="stylesheet" type="text/css" href="fonts/css/all.min.css">


    </head>
    <body>

        <div class="container-fluid">
            <div class="row">
                <div class="khoi">
                    <div class="col-xl-4 khoitrai">
                        <p>Hotline: 19002126 (8h - 12h, 13h30 - 17h)</p>
                        <a href="" title="">Liên hệ hợp tác</a>
                    </div>
                    <div class="col-xl-3 khoiphai">
                        <a href="" title="">Tìm cửa hàng</a>
                        <a href="" title="">Mua hàng tại Shopify</a>
                    </div>

                </div>         
            </div>
        </div> 
        <!--  hết khối 1 -->

        <nav class="navbar navbar-expand-lg navbar-light bg-light khoi2" style="background: white !important;">
            <div class="container-fluid">
                <a class="navbar-brand" href="PhanTrang">
                    <img src="images/1.png" alt="">

                </a>

                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavDropdown">
                    <ul class="navbar-nav">

                        <li  class="nav-item dropdown">
                            <a  class="nav-link dropdown-toggle" href="Nam.html" id="navbarDropdownMenuLink" role="button"  aria-expanded="false">
                                NAM
                                <i class="fa fa-chevron-down"></i>
                                <div class="thanhchay"></div>
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                <li><a class="dropdown-item" href="#">Hunter</a></li>
                                <li><a class="dropdown-item" href="#">Sandal</a></li>
                                <li><a class="dropdown-item" href="#">Giày Thể Thao</a></li>
                                <li><a class="dropdown-item" href="#">Giày Chạy Bộ</a></li>
                                <li><a class="dropdown-item" href="#">Giày Đá Banh</a></li>
                                <li><a class="dropdown-item" href="#">Giày Tây</a></li>
                                <li><a class="dropdown-item" href="#">Dép</a></li>
                            </ul>
                        </li>

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="Nu.html" id="navbarDropdownMenuLink" role="button"  aria-expanded="false">
                                NỮ
                                <i class="fa fa-chevron-down"></i>
                                <div class="thanhchay"></div>
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                <li><a class="dropdown-item" href="#">Hunter</a></li>
                                <li><a class="dropdown-item" href="#">Sandal</a></li>
                                <li><a class="dropdown-item" href="#">Giày Thể Thao</a></li>
                                <li><a class="dropdown-item" href="#">Giày Chạy Bộ</a></li>
                                <li><a class="dropdown-item" href="#">Giày Đá Banh</a></li>
                                <li><a class="dropdown-item" href="#">Giày Tây</a></li>
                                <li><a class="dropdown-item" href="#">Dép</a></li>
                            </ul>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="Nam.html">Khuyến Mãi</a>
                        </li>
                    </ul>
                    <div class="icon">
                        <div class="vuong"></div>
                        <div class="login_success">

                            <div class="ls_title">THÔNG TIN TÀI KHOẢN</div>
                            <div class="username">${sessionScope.hoten}</div>
                            <ul>
                                <li><a href="UserHome.jsp" title="">Tài khoản của tôi</a></li>
                                <li><a href="Logout" title="">Đăng xuất</a></li>
                            </ul>

                        </div>
                        <div class="icon1">
                            <i class="fa-regular fa-user"></i>
                            <div class="overlay login" data-hienlen="${sessionScope.hienlen}"> </div>
                            <div class="modal">
                                <div class="close">
                                    <i class="fa-solid fa-x"></i>
                                </div>
                                <div class="auth-form__header">
                                    <h3 class="auth-form__heading">Đăng Nhập</h3>
                                </div>

                                <form action="Login">
                                    <div class="auth-form__form">
                                        <input name="Username" type="text" class="auth-form__input"  placeholder="Email/Số điện thoại/Tên đăng nhập">
                                        <input name="Password" type="text" class="auth-form__input"  placeholder="Mật khẩu">
                                        <button class="btn login">Đăng Nhập</button>
                                    </div>
                                </form>
                                <div class="auth-form__supportlogin">
                                    <a class="auth-form__supportlogin1">Quên mật khẩu</a>
                                    <a class="auth-form__supportlogin2">Đăng nhập với SMS</a>
                                </div>
                                <div class="auth-form__aside">
                                    <hr>
                                    <div class="seperate">Hoặc</div>
                                </div>
                                <div class="auth-form__socials">
                                    <a class="btn btn--withicon facebook"><i class="fab fa-facebook register "></i> Facebook</a>
                                    <a class="btn btn--withicon google"><i class="fab fa-google"></i> Google</a>
                                    <a class="btn btn--withicon apple"><i class="fab fa-apple"></i> Apple</a>
                                </div>
                                <div class="auth-form__aside2">
                                    <p class="auth-form__login">Bạn mới biết đến Bitis?  <a href="DangKi.jsp" class="auth-form__login">Đăng ký</a></p>
                                </div>
                            </div>


                        </div>
                        <div class="icon1">
                            <div class="khoiden2">4</div>
                            <i class="fa-regular fa-heart"></i>
                        </div>
                        <div class="icon1">
                            <div class="khoiden2">${sessionScope.sizeCart}</div>
                            <i class="fa-solid fa-cart-shopping"></i>
                            <!--    class="fa fa-chevron-down" -->
                        </div>
                    </div>

                </div>
            </div>
        </nav>

        <!--  hết khối 2 -->
        <div class="container-fluid">
            <div class="row">
                <div id="carouselExampleIndicators" class="col-xl-12 carousel slide" data-bs-ride="carousel">
                    <div class="carousel-indicators">
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 4"></button>
                    </div>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="images/1.webp" class="d-block w-100" alt="...">
                        </div>
                        <div class="carousel-item">
                            <img src="images/2.webp" class="d-block w-100" alt="...">
                        </div>
                        <div class="carousel-item">
                            <img src="images/3.webp" class="d-block w-100" alt="...">
                        </div>
                        <div class="carousel-item">
                            <img src="images/18.webp" class="d-block w-100" alt="...">
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>

            </div>
        </div>
        <!-- hết khối 3 -->
        <div class="container">
            <div class="row">
                <div class="col-xl-4 khoi4" >
                    <div class="trang4"></div>
                    <div class="anh4">
                        <img src="images/1.jpg" alt="">             
                    </div>

                </div>

                <div class="col-xl-4 khoi4" id="nguoc">
                    <div class="trang4"></div>

                    <div class="anh4">
                        <img src="images/2.jpg" alt="">             
                    </div>

                </div>

                <div class="col-xl-4 khoi4">
                    <div class="trang4"></div>

                    <div class="anh4">
                        <img src="images/5.webp" alt="">             
                    </div>

                </div>

            </div>
            <!--     hết khối 4 -->
            <div class="row text-center khoi5">
                <div class="col-xl-12">
                    <a href="" title="">Sản Phẩm Mới</a>
                    <a href="" title="">Sản Phẩm Bán Chạy</a>
                </div>
            </div>

            <!--     hết khối 5 -->

            <div class="row">
                <div class="col-xl-3">
                    <a href="SanPham.html" title="">
                        <div  class="khoi6">
                            <div class="anh6">
                                <img src="images/3.jpg" alt="">
                            </div>
                            <div class="anh6_2">
                                <img src="images/9.webp" alt="">
                            </div>
                            <div class="mausize">
                                <p class="size">+7 size</p>
                                <p class="mau">+1 Màu Sắc</p>  
                            </div>
                            <a class="ten">Giày Thể Thao Nam Hunter X - Dune OTP Real White edition HSM001201TRG (Trắng)</a>
                            <p class="gia">1,329,000 ₫</p>
                        </div>
                    </a>
                </div>

                <div class="col-xl-3">
                    <a href="SanPham.html" title="">
                        <div  class="khoi6">
                            <div class="anh6">
                                <img src="images/6.jpg" alt="">
                            </div>
                            <div class="anh6_2">
                                <img src="images/10.webp" alt="">
                            </div>
                            <div class="mausize">
                                <p class="size">+7 size</p>
                                <p class="mau">+1 Màu Sắc</p>  
                            </div>
                            <a class="ten">Giày Thể Thao Nam Hunter X - Dune OTP Real White edition HSM001201TRG (Trắng)</a>
                            <p class="gia">1,329,000 ₫</p>
                        </div>
                    </a>
                </div>




                <div class="col-xl-3">
                    <a href="SanPham.html" title="">
                        <div  class="khoi6">
                            <div class="anh6">
                                <img src="images/6.webp" alt="">
                            </div>
                            <div class="anh6_2">
                                <img src="images/11.webp" alt="">
                            </div>
                            <div class="mausize">
                                <p class="size">+7 size</p>
                                <p class="mau">+1 Màu Sắc</p>  
                            </div>
                            <a class="ten">Giày Thể Thao Nam Hunter X - Dune OTP Real White edition HSM001201TRG (Trắng)</a>
                            <p class="gia">1,329,000 ₫</p>
                        </div>
                    </a>
                </div>

                <div class="col-xl-3 ">
                    <a href="SanPham.html" title="">
                        <div  class="khoi6">
                            <div class="anh6">
                                <img src="images/5.jpg" alt="">
                            </div>
                            <div class="anh6_2">
                                <img src="images/12.webp" alt="">
                            </div>
                            <div class="mausize">
                                <p class="size">+7 size</p>
                                <p class="mau">+1 Màu Sắc</p>  
                            </div>
                            <a class="ten">Giày Thể Thao Nam Hunter X - Dune OTP Real White edition HSM001201TRG (Trắng)</a>
                            <p class="gia">1,329,000 ₫</p>
                        </div>
                    </a>
                </div>


            </div>
            <!-- hết khối  6 -->

            <div class="row">
                <div class="col-xl-3 khoi4" >
                    <div class="trang4 khoi7"></div>
                    <div class="anh4">
                        <img src="images/7.webp" alt="">             
                    </div>

                </div>

                <div class="col-xl-6 khoi4" id="nguoc1">
                    <div class="trang4 khoi7"></div>

                    <div class="anh4">
                        <img src="images/7.jpg" alt="">             
                    </div>

                </div>

                <div class="col-xl-3 khoi4">
                    <div class="trang4 khoi7"></div>

                    <div class="anh4">
                        <img src="images/8.jpg" alt="">             
                    </div>
                </div>
            </div>
            <!--     hết khối 7 -->
            <div class="row">
                <div class="col-xl-12 khoi8">
                    <a href="PhanTrang?doNam=nam" title="">NAM</a>
                    <a href="PhanTrang?doNam=MHT" title="">Hunter</a>
                    <a href="PhanTrang?doNam=MSD" title="">Sandal</a>
                    <a href="PhanTrang?doNam=MSP" title="">Giày Thể Thao</a>
                    <a href="PhanTrang?doNam=MRUN" title="">Giày Chạy Bộ</a>
                    <a href="PhanTrang?doNam=MSC" title="">Giày Đá Banh</a>
                    <a href="PhanTrang?doNam=MTAY" title="">Giày Tây</a>
                    <a href="PhanTrang?doNam=MDEP" title="">Dép</a>

                </div>
            </div>

            <!-- hết khối 8   -->

            <div class="row">
                <c:set var="t" value="0" />
                <c:forEach items="${requestScope.list1}" var="s">
                    <div class="col-xl-3">
                        <a href="SanPham?proID=${s.productID}" title="">
                            <div  class="khoi6">
                                <div class="anh6">
                                    <img src="${s.productImg[0]}" alt="">
                                </div>

                                <c:if test="${requestScope.size[t]>1}" >
                                    <div class="anh6_2">
                                        <img src="${s.productImg[1]}" alt="">
                                    </div>
                                </c:if>
                                <c:if test="${requestScope.size[t]<=1}" >
                                    <div class="anh6_2">
                                        <img src="${s.productImg[0]}" alt="">
                                    </div>
                                </c:if>
                                <c:set var="t" value="${t+1}" />
                                <div class="mausize">
                                    <p class="size">+7 size</p>
                                    <p class="mau">+1 Màu Sắc</p>  
                                </div>
                                <div class="ten">
                                    <a class="ten">${s.productName}</a>
                                </div>
                                <p class="gia">${s.price} ₫</p>
                            </div>
                        </a>
        
                    </div>
                </c:forEach> 
            </div>
            <!-- hết khôi 9 -->
            <div class="row">
                <div class="col-xl-12 khoi10 text-center">

                    <ul class="pagination">
                        <li>                        
                            <a href="PhanTrang?doNam=${requestScope.do1}&page=<c:if test="${requestScope.page-1<1}">${requestScope.num}</c:if><c:if test="${requestScope.page-1>=1}">${requestScope.page-1}</c:if>">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                         <c:if test="${requestScope.num>5}">
                            <c:if test="${requestScope.page+4>requestScope.num}">
                                <c:set var="end" value="${requestScope.num}" />
                            </c:if>
                            <c:if test="${requestScope.page+4<=requestScope.num}">
                                <c:set var="end" value="${requestScope.page+4}" />
                            </c:if>
                            <c:if test="${requestScope.page<requestScope.num-4}">
                                <c:set var="begin" value="${requestScope.page}" />
                            </c:if>
                            <c:if test="${requestScope.page>=requestScope.num-4}">
                                <c:set var="begin" value="${requestScope.num-4}" />
                            </c:if>
                            <c:forEach begin="${begin}" 

                                 end="${end}"
                                 var="i">
                                <li><a <c:if test="${requestScope.page==i}"> data-size_pt="${requestScope.page}"</c:if>
                                        href="PhanTrang?doNam=${requestScope.do1}&page=${i}">${i}</a></li>
                            </c:forEach>
                         </c:if>
                         <c:if test="${requestScope.num<=5}">
                            <c:forEach begin="${1}" 
                                 end="${requestScope.num}"
                                 var="i">
                                <li><a <c:if test="${requestScope.page==i}"> data-size_pt="${requestScope.page}"</c:if>
                                        href="PhanTrang?doNam=${requestScope.do1}&page=${i}">${i}</a></li>
                            </c:forEach>
                         </c:if>
                        <li>    
                            <a href="PhanTrang?doNam=${requestScope.do1}&page=<c:if test="${requestScope.page+1>requestScope.num}">${1}</c:if><c:if test="${requestScope.page+1<=requestScope.num}">${requestScope.page+1}</c:if>">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>




            <!-- hết khối 10 -->
            <div class="row">
                <div class="col-xl-12 khoi8">
                    <a href="PhanTrang?doNu=nu" title="">NỮ</a>
                    <a href="PhanTrang?doNu=FMHT" title="">Hunter</a>
                    <a href="PhanTrang?doNu=FMSD" title="">Sandal</a>
                    <a href="PhanTrang?doNu=FMDOLL" title="">Giày Búp Bê</a>
                    <a href="PhanTrang?doNu=FMFA" title="">Giày Thời Trang</a>
                    <a href="PhanTrang?doNu=FMRUN" title="">Giày Chạy</a>
                    <a href="PhanTrang?doNu=FMSP" title="">Giày Thể Thao Nữ</a>
                    <a href="PhanTrang?doNu=FMDEP" title="">Dép</a>

                </div>
            </div>

            <!--  hết khối 11   --> 
            <div class="row">
               <c:set var="t" value="0" />
                <c:forEach items="${requestScope.list2}" var="s">
                    <div class="col-xl-3">
                        <a href="SanPham?proID=${s.productID}"  title="">
                            <div  class="khoi6">
                                <div class="anh6">
                                    <img src="${s.productImg[0]}" alt="">
                                </div>

                                <c:if test="${requestScope.sizeNu[t]>1}" >
                                    <div class="anh6_2">
                                        <img src="${s.productImg[1]}" alt="">
                                    </div>
                                </c:if>
                                <c:if test="${requestScope.sizeNu[t]<=1}" >
                                    <div class="anh6_2">
                                        <img src="${s.productImg[0]}" alt="">
                                    </div>
                                </c:if>
                                <c:set var="t" value="${t+1}" />
                                <div class="mausize">
                                    <p class="size">+7 size</p>
                                    <p class="mau">+1 Màu Sắc</p>  
                                </div>
                                <div class="ten">
                                    <a class="ten">${s.productName}</a>
                                </div>
                                <p class="gia">${s.price} ₫</p>
                            </div>
                        </a>
                    </div>
                </c:forEach> 
            </div>
            <!-- hết khôi 12 -->
            <div class="row">
                <div class="col-xl-12 khoi10 text-center">

                    <ul class="pagination">
                        <li>                        
                            <a href="PhanTrang?doNu=${requestScope.do2}&pageNu=<c:if test="${requestScope.pageNu-1<1}">${requestScope.numNu}</c:if><c:if test="${requestScope.pageNu-1>=1}">${requestScope.pageNu-1}</c:if>">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                         <c:if test="${requestScope.numNu>5}">
                            <c:if test="${requestScope.pageNu+4>requestScope.numNu}">
                                <c:set var="end" value="${requestScope.numNu}" />
                            </c:if>
                            <c:if test="${requestScope.pageNu+4<=requestScope.numNu}">
                                <c:set var="end" value="${requestScope.pageNu+4}" />
                            </c:if>
                            <c:if test="${requestScope.pageNu<requestScope.numNu-4}">
                                <c:set var="begin" value="${requestScope.pageNu}" />
                            </c:if>
                            <c:if test="${requestScope.pageNu>=requestScope.numNu-4}">
                                <c:set var="begin" value="${requestScope.numNu-4}" />
                            </c:if>
                            <c:forEach begin="${begin}" 

                                 end="${end}"
                                 var="i">
                                <li><a <c:if test="${requestScope.pageNu==i}"> data-size_pt="${requestScope.pageNu}"</c:if>
                                        href="PhanTrang?doNu=${requestScope.do2}&pageNu=${i}">${i}</a></li>
                            </c:forEach>
                        </c:if> 
                        <c:if test="${requestScope.numNu<=5}"> 
                            <c:forEach begin="${1}" 
                                 end="${requestScope.numNu}"
                                 var="i">
                                <li><a <c:if test="${requestScope.pageNu==i}"> data-size_pt="${requestScope.pageNu}"</c:if>
                                        href="PhanTrang?doNu=${requestScope.do2}&pageNu=${i}">${i}</a></li>
                            </c:forEach>
                        </c:if> 
                        <li>    
                            <a href="PhanTrang?doNu=${requestScope.do2}&pageNu=<c:if test="${requestScope.pageNu+1>requestScope.numNu}">${1}</c:if><c:if test="${requestScope.pageNu+1<=requestScope.numNu}">${requestScope.pageNu+1}</c:if>">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- hết khối 13 -->
        </div>
    </div>

    <div class="container-fluid">
        <div class="row">
            <div class="col-xl-12 khoi14">
                <div class="anh14">
                    <img src="images/13.webp" alt=""> 
                </div>
                <div class="anh14">
                    <img src="images/9.jpg" alt=""> 
                </div>
                <div class="anh14">
                    <img src="images/10.jpg" alt=""> 
                </div>
                <div class="anh14">
                    <img src="images/14.webp" alt=""> 
                </div>
                <div class="anh14">
                    <img src="images/15.webp" alt=""> 
                </div>
                <div class="anh14">
                    <img src="images/16.webp" alt=""> 
                </div>
                <div class="anh14">
                    <img src="images/17.webp" alt=""> 
                </div>
                <div class="anh14">
                    <img src="images/11.jpg" alt=""> 
                </div>

            </div>
        </div>
    </div>

    <!-- hết khối 14 -->
    <div class="container">
        <div class="row khoi15">
            <div class="col-xl-2">
                <a>VỀ BITI'S</a><br>
                <a>Về Bitis</a><br>
                <a>Câu chuyện Biti's</a><br>
                <a>Bước tiến phát triển</a><br>
                <a>Hoạt Động</a><br>
                <a>Liên hệ</a><br>

            </div>
            <div class="col-xl-2">
                <a>THÔNG TIN</a><br>
                <a>Trạng thái đơn hàng</a><br>
                <a>Hình thức giao hàng</a><br>
                <a>Hình thức thanh toán</a><br>
                <a>Chính sách đổi trả</a><br>
                <a>Chính sách bảo hành</a><br>
                <a>Chính sách khách hàng thân thiết</a><br>
            </div>
            <div class="col-xl-2">
                <a>TRỢ GIÚP</a><br>
                <a>Tuyển Dụng</a><br>
                <a>Hệ thống cửa hàng</a><br>
                <a>Liên hệ hợp tác</a><br>
                <a>Q&A</a><br>

            </div>
            <div class="col-xl-4">
                <div class="logo14">
                    <img src="images/1.png" alt="">
                </div>
                <p>
                    CÔNG TY TNHH SẢN XUẤT HÀNG TIÊU DÙNG BÌNH TIÊN<br>
                    Địa chỉ: 22 Lý Chiêu Hoàng, Phường 10, Quận 6, TP. Hồ Chí Minh<br>
                    Điện thoại: (028) 38 753 443<br>
                    <br>
                    Email: Liên hệ các vấn đề về đặt hàng online : tuvan_online@bitis.com.vn<br>
                    Email: Liên hệ các vấn đề về kênh cửa hàng, đại lý (offline) : chamsockhachhang@bitis.com.vn<br>
                    <br>
                    Hotline: 19002126 ( cước phí: 3.000đ/phút )<br>
                    Thời gian tư vấn: Từ 07h30 đến 12h15, 13h15 đến 21h30 các ngày trong tuần ( Trừ ngày Lễ, Tết)<br>
                </p>

            </div>

        </div>  
    </div>

    <!-- hết khối 15 -->
    <div class="container-fluid">
        <div class="row khoi16">
            <div class="col-xl-4">
                <div class="dieukhoan">
                    <a href="" title="">Điều khoản</a>
                    <a href="" title="">Chính sách bảo mật</a>
                    <a href="" title="">Hướng dẫn sử dụng</a> 
                </div>
                <p>Copyright © 2023 Biti's. Powered by Haravan Enterprise</p>
            </div>
            <div class="col-xl-2 tieuchuan">
                <img src="images/2.png" alt="">
            </div>
            <div class="col-xl-4">
                <p>
                    Giấy CNĐKDN: 0301340497 được cấp ngày 20/01/1992, được sửa đổi lần thứ 20 ngày 28/12/2015 bởi Sở Kế hoạch và Đầu tư TPHCM
                </p>
            </div>
        </div>
    </div>




    <script src="js/1.js"></script>
    <script src="js/bootstrap.min.js"></script>

</body>

</html>

