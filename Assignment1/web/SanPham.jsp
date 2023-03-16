

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
        <link rel="stylesheet" type="text/css" href="css/nam.css">
        <link rel="stylesheet" type="text/css" href="css/SanPham.css">

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
                            <a   class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
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
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
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
                                <div class="auth-form__form">
                                    <input type="text" class="auth-form__input"  placeholder="Email/Số điện thoại/Tên đăng nhập">
                                    <input type="text" class="auth-form__input"  placeholder="Mật khẩu">
                                    <button class="btn login">Đăng Nhập</button>
                                </div>
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
                            <a href="ShowCart" style="color: black;">
                                <div class="khoiden2">${sessionScope.sizeCart}</div>
                                <i class="fa-solid fa-cart-shopping"></i>
                                <!--    class="fa fa-chevron-down" -->
                            </a>
                        </div>
                    </div>

                </div>
            </div>
        </nav>
        <!--  hết khối 2 -->
        <div class="container-fluid">
            <div class="row">
                <div class="col-xl-12 n3">
                    <a href="" title="">Trang chủ</a>

                    <a href="" title="">${requestScope.tensp}</a>  
                </div> 
            </div>
        </div>
        <!--     hết khối 3 -->
        <div class="container">
            <div class="row sp4">
                <div class="col-xl-6 sp3_trai" >
                    <c:set var="t" value="0" />
                    <c:forEach items="${requestScope.list}" var="s">
                        <img src="${s.productImg[0]}" alt="" class="trai3_anhto">

                        <div class="trai3_anhnho">
                            <img src="${s.productImg[1]}" alt="">
                        </div> 
                        <div class="trai3_anhnho">   
                            <img src="${s.productImg[2]}" alt="">
                        </div>
                        <div class="trai3_anhnho">
                            <img src="${s.productImg[3]}" alt="">
                        </div>
                        <div class="trai3_anhnho">    
                            <img src="${s.productImg[4]}" alt="">
                        </div>

                        <div class="trai3_anhnho1">    
                            <img src="${s.productImg[5]}" alt="">
                        </div>
                        <div class="trai3_anhnho1">    
                            <img src="${s.productImg[6]}" alt="">
                        </div>
                        <div class="trai3_anhnho1">    
                            <img src="${s.productImg[7]}" alt="">
                        </div>
                    </c:forEach>                  
                </div>
                <!-- hết sp3 trái -->
                <div class="col-xl-6 sp3_phai">
                    <form action="" name="f" method="post" >
                        <c:forEach items="${requestScope.list}" var="s">

                            <p class="name">
                                ${s.productName}
                            </p>
                            <p class="gia">${s.price} ₫</p>
                        </c:forEach>
                        <p class="chinhsach">
                            Mua trước trả sau với Kredivo <br>
                            Trả sau lên đến 12 tháng | Ưu đãi 50% tối đa 100k | Tải app và đăng ký ngay 
                            <a href="" title="">tại đây</a>
                        </p>
                        <p class="tinhtrang">
                            Tình trạng: Còn hàng (${requestScope.soluong})
                        </p>
                        <p style="font-size: 15px;">Kích Thước:</p>
                        <div class="kichthuoc">
                            <div class="size"<c:if test="${requestScope.size==39}"> data-size="${requestScope.size}"</c:if> >
                                    <input  type="button" name="size" 
                                            value="39" onclick="buy('${requestScope.productID}', '39')">

                            </div>    
                            <div class="size" <c:if test="${requestScope.size==40}"> data-size="${requestScope.size}"</c:if>>
                                <input type="button" name="size" value="40" onclick="buy('${requestScope.productID}', '40')">
                            </div>    
                            <div class="size" <c:if test="${requestScope.size==41}"> data-size="${requestScope.size}"</c:if>>
                                <input type="button" name="size" value="41" onclick="buy('${requestScope.productID}', '41')">
                            </div>    
                            <div class="size" <c:if test="${requestScope.size==42}"> data-size="${requestScope.size}"</c:if>>
                                <input type="button" name="size" value="42" onclick="buy('${requestScope.productID}', '42')">
                            </div>    

                        </div>
                        <p class="khoiluong">
                            <button><a href="">-</a></button>
                            <input type="number" name="num" value="1" >
                            <button><a href="">+</a></button>
                        </p>
                        <div class="sp3_nut">
                            <button type="submit" class="mua" onclick="addcart('${requestScope.productID}', '${requestScope.size}')">
                                Thêm vào giỏ
                            </button>
                            <div class="tuvan">
                                Tư vấn:19002126
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- hết sp3 phải -->
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
        <script src="js/SanPham.js"></script>
        <script src="js/bootstrap.min.js"></script>

    </body>

</html>
<script type="text/javascript">
                                function buy(id, size) {

                                    document.f.action = "SanPham?proID=" + id + "&size=" + size;
                                    document.f.submit();
                                }
                                function addcart(id, size) {
                                    var m = document.f.num.value;
                                    document.f.action = "BuyServlet?proID=" + id + "&size=" + size + "&num=" + m;
                                    document.f.submit();
                                }
</script>

