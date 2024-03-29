<%-- 
    Document   : DangNhap
    Created on : Feb 17, 2023, 1:26:24 AM
    Author     : Tran Tuan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <link rel="stylesheet" type="text/css" href="css/nam.css">
        <link rel="stylesheet" type="text/css" href="css/DangKi.css">

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

                        <li class="nav-item dropdown">
                            <a   class="nav-link dropdown-toggle" href="Nam.html" id="navbarDropdownMenuLink" role="button" aria-expanded="false">
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
                            <a class="nav-link dropdown-toggle" href="Nu.html" id="navbarDropdownMenuLink" role="button" aria-expanded="false">
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
                            <a class="nav-link" href="#">Khuyến Mãi</a>
                        </li>
                    </ul>
                    <div class="icon">
                        <div class="vuong"></div>
                        <div class="login_success">

                            <div class="ls_title">THÔNG TIN TÀI KHOẢN</div>
                            <div class="username">Trần Huy</div>
                            <ul>
                                <li><a href="" title="">Tài khoản của tôi</a></li>
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
                            <div class="khoiden2">6</div>
                            <i class="fa-solid fa-cart-shopping"></i>
                            <!--    class="fa fa-chevron-down" -->
                        </div>
                    </div>

                </div>
            </div>
        </nav>
        <!--  hết khối 2 -->
        <div class="container">
            <div class="row dk2">
                <div class="col-xl-5 ">
                    <p class="tieude">
                        <a href="DangNhap.jsp" class="tieude">ĐĂNG NHẬP</a>
                        <a href="DangKi.jsp" class="tieude">ĐĂNG KÝ</a>

                    </p>
                    <form action="Login" method="get" accept-charset="utf-8">

                        <p class="input">
                            Email:<br>
                            <input type="email" name="Username" placeholder="Email">
                        </p>
                        <p class="input">
                            Mật Khẩu:<br>
                            <input type="password" name="Password" placeholder="Mật Khẩu">
                        </p>
                        <div class="submit_wrapper">
                            <div class="submit">
                                <button type="submit">Đăng Nhập</button>
                            </div>
                            <div class="text">
                                Bạn đã có tài khoản ? <a href="" title="">Đăng nhập ngay</a><br>
                                Bạn quên mật khẩu? <a href="" title="">Khôi phục mật khẩu</a>
                            </div>

                        </div> 
                        <p style="text-align: center;color: red;font-size: 20px;font-weight: bold">${requestScope.error}</p> 

                    </form>
                    <a class="trangchu" href="home.html">
                        <i class="fa-solid fa-arrow-left-long"></i>
                        Quay lại trang chủ             
                    </a>
                </div>
            </div>
        </div>

        <!-- hết -->
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

