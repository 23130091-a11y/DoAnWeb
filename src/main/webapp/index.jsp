<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WebGiaDung</title>

    <!-- Link favicon -->
    <link rel="apple-touch-icon" sizes="57x57" href="assets/favicon/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="assets/favicon/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="assets/favicon/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="assets/favicon/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="assets/favicon/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="assets/favicon/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="assets/favicon/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="assets/favicon/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="assets/favicon/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192"  href="assets/favicon/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="assets/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="assets/favicon/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href="assets/favicon/favicon-16x16.png">
    <link rel="manifest" href="assets/favicon/manifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="./assets/favicon/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">

    <!-- Link Reset CSS -->
    <link rel="stylesheet" href="assets/css/reset.css">
    <!-- Link font -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300..800;1,300..800&family=Poppins:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
        rel="stylesheet">
    <!-- Link icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css"
        integrity="sha512-2SwdPD6INVrV/lHTZbO2nodKhrnDdJK9/kg2XD1r9uGqPo1cUbujc+IYdlYdEErWNu69gVcYgdxlmVmzTWnetw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- Link CSS -->
    <link rel="stylesheet" href="assets/css/grid.css">
    <link rel="stylesheet" href="assets/css/base.css">
    <link rel="stylesheet" href="assets/css/style.css">
</head>

<body>
    <header id="header" class="header">
        <div class="grid wide">
            <div class="header-top">
                <!-- Navbar -->
                <nav class="navbar">
                    <ul class="navbar__list">
                        <li class="navbar__item navbar__item--saparate navbar__item--fade-qr">
                            Vào cửa hàng trên ứng dụng
                            <div class="navbar-qr">
                                <img src="assets/img/qr_code.jpg" alt="QR Code" class="navbar-qr__img">
                                <div class="navbar-qr__wrap">
                                    <a class="navbar-qr__link" href="#!">
                                        <img src="assets/img/googleplay.png" alt="Google Play"
                                             class="navbar-qr__media">
                                    </a>
                                    <a class="navbar-qr__link" href="#!">
                                        <img src="assets/img/appstore.png" alt="App store" class="navbar-qr__media">
                                    </a>
                                </div>
                            </div>
                        </li>
                        <li class="navbar__item">
                            <span class="navbar__item--no-pointer">Kết nối</span>
                            <!-- Chỉ định dạng chữ Kết nối (phần tử nhỏ trong thẻ li) nên dùng span để CSS cụ thể -->
                            <a href="#!" class="navbar__item-icon-link">
                                <i class="navbar__item-symbol fa-brands fa-facebook"></i>
                            </a>
                            <a href="#!" class="navbar__item-icon-link">
                                <i class="navbar__item-symbol fa-brands fa-square-instagram"></i>
                            </a>
                        </li>
                    </ul>

                    <ul class="navbar__list">
                        <li class="navbar__item navbar__item--fade-notify">
                            <i class="navbar__item-symbol fa-regular fa-bell"></i>
                            <a href="#!" class="navbar__link">
                                Thông báo
                                <div class="navbar-notify navbar-notify--no-login">
                                    <!-- navbar-notify--no-login -->
                                    <img src="assets/img/no-login_img.png" alt="" class="navbar-notify__img">
                                    <span class="navbar-notify__message">Đăng nhập để xem thông báo</span>
                                    <!---->
                                    <!-- <div class="navbar-notify__wrap">
                                        <header class="navbar-notify__header">
                                            <h3 class="navbar-notify__heading">Thông báo mới nhận</h3>
                                        </header>
                                        
                                        <ul class="navbar-notify__list">
                                            <li class="navbar-notify__item navbar-notify__item--view">
                                                <a href="#!" class="navbar-notify__link">
                                                    <img class="navbar-notify__login-img" src="./assets/img/notify-img-01.png" alt="Túi đựng quần áo, chăn ga">
                                                    <div class="navbar-notify__content">
                                                        <span class="navbar-notify__title">Tặng ngay 1 túi đựng quần áo, chăn ga Tặng ngay 1 túi đựng quần áo, chăn ga</span>
                                                        <span class="navbar-notify__describe">Khuyến mãi siêu hot</span>
                                                    </div>
                                                </a>
                                            </li>

                                            <li class="navbar-notify__item">
                                                <a href="#!" class="navbar-notify__link">
                                                    <img class="navbar-notify__login-img" src="./assets/img/notify-img-02.jpg" alt="Túi đựng quần áo, chăn ga">
                                                    <div class="navbar-notify__content">
                                                        <span class="navbar-notify__title">Combo 12 viên vệ sinh lồng máy giặt, diệt khuẩn tiện lợi</span>
                                                        <span class="navbar-notify__describe">Khuyến mãi siêu hot</span>
                                                    </div>
                                                </a>
                                            </li>

                                            <li class="navbar-notify__item">
                                                <a href="#!" class="navbar-notify__link">
                                                    <img class="navbar-notify__login-img" src="./assets/img/notify-img-03.jpg" alt="Túi đựng quần áo, chăn ga">
                                                    <div class="navbar-notify__content">
                                                        <span class="navbar-notify__title">Khăn lau xe ô tô chuyên dụng mềm mịn và thấm hút tốt, Loại 35cm x 35cm</span>
                                                        <span class="navbar-notify__describe">Khuyến mãi siêu hot</span>
                                                    </div>
                                                </a>
                                            </li>
                                        </ul>
                                        <div class="navbar-notify__footer">
                                            <a href="" class="navbar-notify__btn">Xem tất cả</a>
                                        </div>
                                    </div> -->
                                </div>
                            </a>
                        </li>
                        <li class="navbar__item">
                            <i class="navbar__item-symbol fa-regular fa-circle-question"></i>
                            <a href="#!" class="navbar__link">Trợ giúp</a>
                        </li>

                        <c:if test="${empty sessionScope.USER_LOGIN}">
                            <li class="navbar__item navbar__item--strong-weight navbar__item--saparate">
                                <a href="register.jsp" class="navbar__link">Đăng ký</a>
                            </li>

                            <li class="navbar__item navbar__item--strong-weight">
                                <a href="login.jsp" class="navbar__link">Đăng nhập</a>
                            </li>
                        </c:if>

                        <!-- Đã đăng nhập -->
                        <c:if test="${not empty sessionScope.USER_LOGIN}">
                            <li class="navbar__item navbar-user">
                                <img class="navbar-user__img"
                                     src="data:image/png;base64,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"
                                     alt="Avatar">

                                <span class="navbar-user__name">
                                        ${sessionScope.USER_LOGIN.name}
                                </span>

                                <ul class="navbar-user__menu">
                                    <li class="navbar-user__item">
                                        <a href="profile.jsp" class="navbar-user__link">
                                            Tài khoản của tôi
                                        </a>
                                    </li>

                                    <li class="navbar-user__item">
                                        <a href="favorite.jsp" class="navbar-user__link">
                                            Yêu thích
                                        </a>
                                    </li>

                                    <li class="navbar-user__item">
                                        <a href="orders.jsp" class="navbar-user__link">
                                            Thông tin đơn hàng
                                        </a>
                                    </li>

                                    <li class="navbar-user__item navbar-user__item--separate">
                                        <a href="logout" class="navbar-user__link">
                                            Đăng xuất
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        </c:if>

                    </ul>
                </nav>
                <!-- Search -->
                <div class="search">
                    <a href="/" class="logo">
                        <img class="logo__img" src="assets/img/logo.png" alt="webgiadung">
                    </a>
                    <div class="header-search">
                        <div class="header-search__wrap">
                            <input type="text" class="header-search__input" placeholder="Bạn cần tìm kiếm sản phẩm gì?">
                            <div class="search-history">
                                <h3 class="search-history__heading">Lịch sử tìm kiếm</h3>
                                <ul class="search-history__list">
                                    <li class="search-history__item">
                                        <a href="#!" class="search-history__link">Tủ lạnh aqua 90l</a>
                                    </li>
                                    <li class="search-history__item">
                                        <a href="#!" class="search-history__link">Thuốc diệt chuột</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <button class="header-search__btn btn btn--default-color"  onclick="window.location.href='search.jsp'">
                            <i class="header-search__icon fa-solid fa-magnifying-glass"></i>
                            <span class="header-search__text">Tìm kiếm</span>
                        </button>
                    </div>
                    <div class="header-cart">
                        <div class="header-cart__scale header-cart__scale--fade-product header-cart__scale--empty">
                            <!-- Khi không có sản phẩm: header-cart__scale--empty -->
                            <a href="cart.jsp">
                                <i class="header-cart__icon fa-solid fa-cart-shopping"></i>
                            </a>
                            <span class="header-cart__notice">3</span>
                            <div class="cart-list cart-list--no-cart">
                                <!-- Chưa đăng nhập:  cart-list--no-cart -->
                                <img src="assets/img/no-cart_img.png" alt="" class="header-cart__img">
                                <span class="header-cart__msg">Chưa có sản phẩm</span>
                                <!-- Có sản phẩm -->
                                <!-- <div class="cart-list__wrap">
                                    <h3 class="cart-list__header">
                                        Sản phẩm đã thêm
                                    </h3>
                                    <ul class="cart-list__list">
                                        <li class="cart-list__item">
                                            <img src="./assets/img/add-cart-01.jpeg" alt="" class="cart-list__img">
                                            <section class="cart-list__body">
                                                <div class="cart-list__info">
                                                    <h4 class="cart-list__heading">Gương để bàn bông hoa Gương để bàn bông hoa Gương để bàn bông hoa</h4>
                                                    <div class="cart-list__price-wrap">
                                                        <span class="cart-list__price">19.300đ</span>
                                                        <span class="cart-list__multiply">x</span>
                                                        <span class="cart-list__qnt">1</span>
                                                    </div>
                                                </div>
                                                <div class="cart-list__desc">
                                                    <span class="cart-list__product-cate">
                                                        Phân loại: Gương
                                                    </span>
                                                    <span class="cart-list__remove">Xóa</span>
                                                </div>
                                            </section>
                                        </li>

                                        <li class="cart-list__item">
                                            <img src="./assets/img/add-cart-02.jpeg" alt="" class="cart-list__img">
                                            <section class="cart-list__body">
                                                <div class="cart-list__info">
                                                    <h4 class="cart-list__heading">Đĩa Sứ Tròn 8.5inch CHIBI</h4>
                                                    <div class="cart-list__price-wrap">
                                                        <span class="cart-list__price">44.500đ</span>
                                                        <span class="cart-list__multiply">x</span>
                                                        <span class="cart-list__qnt">1</span>
                                                    </div>
                                                </div>
                                                <div class="cart-list__desc">
                                                    <span class="cart-list__product-cate">
                                                        Phân loại: Hàng sứ - Thủy tinh
                                                    </span>
                                                    <span class="cart-list__remove">Xóa</span>
                                                </div>
                                            </section>
                                        </li>
                                        
                                        <li class="cart-list__item">
                                            <img src="./assets/img/add-cart-03.jpeg" alt="" class="cart-list__img">
                                            <section class="cart-list__body">
                                                <div class="cart-list__info">
                                                    <h4 class="cart-list__heading">Gạt Tàn BRUNSWICK YG8005</h4>
                                                    <div class="cart-list__price-wrap">
                                                        <span class="cart-list__price">8.300đ</span>
                                                        <span class="cart-list__multiply">x</span>
                                                        <span class="cart-list__qnt">1</span>
                                                    </div>
                                                </div>
                                                <div class="cart-list__desc">
                                                    <span class="cart-list__product-cate">
                                                        Phân loại: Hàng sứ - Thủy tinh
                                                    </span>
                                                    <span class="cart-list__remove">Xóa</span>
                                                </div>
                                            </section>
                                        </li>
                                    </ul>
                                    <a href="#" class="cart-list__view btn btn--default-color">Xem giỏ hàng</a>
                                </div> -->
                            </div>
                        </div>
                    </div>
                    <div class="header-hotline">
                        <i class="header-hotline__icon fa-solid fa-phone-volume"></i>
                        <div>
                            <span class="header-hotline__text">Hotline hỗ trợ</span>
                            <span class="header-hotline__text">1900.6750</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <main class="main" style="background-color: #d9d9d9">
        <div class="cta">
            <div class="grid wide">
                <div class="row small-gutter">
                    <div class="col l-2 m-0 c-0">
                        <nav class="category">
                            <h2 class="category__heading">Danh mục</h2>
                            <ul class="category__list">
                                <li class="category__item category__item--active">
                                    <a href="#!" class="category__link">Gia dụng - Nhà cửa</a>
                                    <ul class="category-menu">
                                        <li class="category-menu__item">
                                            <a href="search.jsp" class="category-menu__link">Đồ dùng nhà bếp</a>
                                        </li>
                                        <li class="category-menu__item">
                                            <a href="#!" class="category-menu__link">Dụng cụ làm vườn</a>
                                        </li>
                                        <li class="category-menu__item">
                                            <a href="#!" class="category-menu__link">Đồ dùng sinh hoạt</a>
                                        </li>
                                        <li class="category-menu__item">
                                            <a href="#!" class="category-menu__link">Vệ sinh nhà cửa</a>
                                        </li>
                                        <li class="category-menu__item">
                                            <a href="#!" class="category-menu__link">Dụng cụ sửa chữa</a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="category__item">
                                    <a href="#!" class="category__link">Phụ kiện ô tô</a>
                                </li>
                                <li class="category__item">
                                    <a href="#!" class="category__link">Thời trang</a>
                                </li>
                                <li class="category__item">
                                    <a href="#!" class="category__link">Âm thanh - Camera</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                    <div class="col l-10 m-12 c-12">
                        <div class="navigation">
                        <a href="#!" class="navigation__link navigation__link--active">Trang chủ</a>
                            <i class="fa-solid fa-chevron-right navigation__icon"></i>
                        </div>
                        <figure class="hero">
                            <div id="slider">
                                <c:forEach var="slide" items="${slides}">
                                    <a class="slide"
                                       href="slide.jsp?id=${slide.id}"
                                       style="background-image: url('${slide.avatar}')">
                                    </a>
                                </c:forEach>
                            </div>
                        </figure>
                    </div>
                </div>
            </div>
        </div>

        <div class="main_product">
            <div class="grid wide">
                <!-- Sản phẩm nổi bật -->
                    <section class="featured">
                    <h2>Sản phẩm nổi bật</h2>
                    <button class="scroll-btn left"><i class="fa-solid fa-chevron-left"></i></button>
                    <button class="scroll-btn right"><i class="fa-solid fa-chevron-right"></i></button>
                        <div class="product-list">
                            <c:forEach items="${list}" var="p">
                                <div class="product-card">
                                <a href="product?id=${p.id}">
                                    <img src="${p.image}" alt="${p.name}">
                                </a>

                                <a href="product?id=${p.id}">
                                    <p>${p.name}</p>
                                </a>

                                <span class="price">${p.totalPrice}đ</span>

                                <div class="bottom">
                                    <div class="star"><i class="fa-solid fa-star"></i> 5</div>
                                    <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu thích</button>
                                </div>
                            </div>
                            </c:forEach>
                        </div>
                </section>
                <!-- Khuyến mãi Đặc biệt-->
                <section class="featured">
                    <h2>Khuyến mãi đặc biệt</h2>
                    <button class="scroll-btn left"><i class="fa-solid fa-chevron-left"></i></button>
                    <button class="scroll-btn right"><i class="fa-solid fa-chevron-right"></i></button>
                    <div class="product-list">
                        <div class="product-card">
                            <a><img src="assets/img/bochuyendoi.jpg" alt=""></a>
                            <a>
                                <p>Bộ chuyển đổi CarPlay không dây 2in1 cho xe hơi hiện đại</p>
                            </a>
                            <div class="price-discount">
                                <div class="price-top">
                                    <span class="old-price">385.000đ</span>
                                    <div class="discount-badge">Giảm 15%</div>
                                </div>
                                <div class="price-bottom">
                                    <span class="new-price">327.000đ</span>
                                </div>
                            </div>
                            <div class="bottom">
                                <div class="star"><i class="fa-solid fa-star"></i>3.3</div>
                                <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu thích</button>
                            </div>
                        </div>
                        <div class="product-card">
                            <a><img src="assets/img/khan.jpg" alt=""></a>
                            <a>
                                <p>Khăn lau xe ô tô chuyên dụng mềm mịn và thấm hút tốt, Loại 35cm x 35cm</p>
                            </a>
                            <div class="price-discount">
                                <div class="price-top">
                                    <span class="old-price">110.000đ</span>
                                    <div class="discount-badge">Giảm 10%</div>
                                </div>
                                <div class="price-bottom">
                                    <span class="new-price">99.000đ</span>
                                </div>
                            </div>
                            <div class="bottom">
                                <div class="star"><i class="fa-solid fa-star"></i> 4</div>
                                <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu thích</button>
                            </div>
                        </div>
                        <div class="product-card">
                            <a><img src="assets/img/chaixit.jpg" alt=""></a>
                            <a>
                                <p>Chai xịt rệp giường, mạt bụi hiệu quả an toàn</p>
                            </a>
                            <div class="price-discount">
                                <div class="price-top">
                                    <span class="old-price">185.000đ</span>
                                    <div class="discount-badge">Giảm 20%</div>
                                </div>
                                <div class="price-bottom">
                                    <span class="new-price">148.000đ</span>
                                </div>
                            </div>
                            <div class="bottom">
                                <div class="star"><i class="fa-solid fa-star"></i> 4.4</div>
                                <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu thích</button>
                            </div>
                        </div>
                        <div class="product-card">
                            <a><img src="assets/img/ghe.jpg" alt=""></a>
                            <a>
                                <p>Gối tựa lưng cao su non giúp thư giãn dành cho dân văn phòng, Màu đen</p>
                            </a>
                            <div class="price-discount">
                                <div class="price-top">
                                    <span class="old-price">420.000đ</span>
                                    <div class="discount-badge">Giảm 15%</div>
                                </div>
                                <div class="price-bottom">
                                    <span class="new-price">375.000đ</span>
                                </div>
                            </div>
                            <div class="bottom">
                                <div class="star"><i class="fa-solid fa-star"></i> 4.3</div>
                                <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu thích</button>
                            </div>
                        </div>
                        <div class="product-card">
                            <a><img src="assets/img/giado.jpg" alt=""></a>
                            <a>
                                <p>Giá đỡ chuyển đổi máy cầm tay thành máy bàn chuyên dụng, đa năng và an toàn khi thao
                                    tác
                                </p>
                            </a>
                            <div class="price-discount">
                                <div class="price-top">
                                    <span class="old-price">390.000đ</span>
                                    <div class="discount-badge">Giảm 20%</div>
                                </div>
                                <div class="price-bottom">
                                    <span class="new-price">312.000đ</span>
                                </div>
                            </div>
                            <div class="bottom">
                                <div class="star"><i class="fa-solid fa-star"></i> 3.6</div>
                                <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu thích</button>
                            </div>
                        </div>
                        <div class="product-card">
                            <a><img src="assets/img/thuphatamthnah.png" alt=""></a>
                            <a>
                                <p>Bộ thu phát âm thanh không dây truyền tín hiệu mạnh, kết nối đa thiết bị, Bộ thu phát
                                    âm
                                    thanh NFC BT200</p>
                            </a>
                            <div class="price-discount">
                                <div class="price-top">
                                    <span class="old-price">500.000đ</span>
                                    <div class="discount-badge">Giảm 25%</div>
                                </div>
                                <div class="price-bottom">
                                    <span class="new-price">375.000đ</span>
                                </div>
                            </div>
                            <div class="bottom">
                                <div class="star"><i class="fa-solid fa-star"></i> 4.8</div>
                                <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu thích</button>
                            </div>
                        </div>
                        <div class="product-card">
                            <a><img src="assets/img/vali.jpg" alt=""></a>
                            <a>
                                <p>Vali nhựa Immax X11 24inch</p>
                            </a>
                            <div class="price-discount">
                                <div class="price-top">
                                    <span class="old-price">330.000đ</span>
                                    <div class="discount-badge">Giảm 10%</div>
                                </div>
                                <div class="price-bottom">
                                    <span class="new-price">297.000đ</span>
                                </div>
                            </div>
                            <div class="bottom">
                                <div class="star"><i class="fa-solid fa-star"></i> 4.3</div>
                                <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu thích</button>
                            </div>
                        </div>
                    </div>
                </section>

                <!-- Gợi ý cho bạn -->
                <section class="featured">
                    <h2>Gợi ý cho bạn</h2>
                    <button class="scroll-btn left"><i class="fa-solid fa-chevron-left"></i></button>
                    <button class="scroll-btn right"><i class="fa-solid fa-chevron-right"></i></button>
                    <div class="product-list">
                        <div class="product-card">
                            <a><img src="assets/img/denhoc.jpg" alt=""></a>
                            <a>
                                <p>Đèn học chống cận cao cấp 3 chế độ sáng, bật tắt cảm ứng tiện lợi, Loại 6000mah (gồm
                                    cả
                                    củ sạc)</p>
                            </a>
                            <span class="price">187.000đ</span>
                            <div class="bottom">
                                <div class="star"><i class="fa-solid fa-star"></i> 4</div>
                                <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu thích</button>
                            </div>
                        </div>
                        <div class="product-card">
                            <a><img src="assets/img/loadeban.jpg" alt=""></a>
                            <a>
                                <p>Loa để bàn mini nhỏ gọn âm thanh vượt trội</p>
                            </a>
                            <span class="price">162.000đ</span>
                            <div class="bottom">
                                <div class="star"><i class="fa-solid fa-star"></i> 3</div>
                                <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu thích</button>
                            </div>
                        </div>

                        <div class="product-card">
                            <a><img src="assets/img/maylamtoc.png" alt=""></a>
                            <a>
                                <p>Máy làm tóc đa năng 3 trong 1 uốn, là, ép kiểu Hàn Quốc, Màu đen</p>
                            </a>
                            <span class="price">266.000đ</span>
                            <div class="bottom">
                                <div class="star"><i class="fa-solid fa-star"></i> 4.4</div>
                                <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu thích</button>
                            </div>
                        </div>
                        <div class="product-card">
                            <a><img src="assets/img/thuphatamthnah.png" alt=""></a>
                            <a>
                                <p>Bộ thu phát âm thanh không dây truyền tín hiệu mạnh, kết nối đa thiết bị, Bộ thu phát
                                    âm
                                    thanh NFC BT200</p>
                            </a>
                            <div class="price-discount">
                                <div class="price-top">
                                    <span class="old-price">418.000đ</span>
                                    <div class="discount-badge">Giảm 20%</div>
                                </div>
                                <div class="price-bottom">
                                    <span class="new-price">335.000đ</span>
                                </div>
                            </div>
                            <div class="bottom">
                                <div class="star"><i class="fa-solid fa-star"></i> 4.6</div>
                                <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu thích</button>
                            </div>
                        </div>
                        <div class="product-card">
                            <a><img src="assets/img/fan.jpg" alt=""></a>
                            <a>
                                <p>Quạt đôi mini xoay 360 độ 12V-24V tiện ích trên ô tô </p>
                            </a>
                            <span class="price">118.000đ</span>
                            <div class="bottom">
                                <div class="star"><i class="fa-solid fa-star"></i> 5</div>
                                <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu thích</button>
                            </div>
                        </div>
                        <div class="product-card">
                            <a><img src="assets/img/ghe.jpg" alt=""></a>
                            <a>
                                <p>Gối tựa lưng cao su non giúp thư giãn dành cho dân văn phòng, Màu đen</p>
                            </a>
                            <div class="price-discount">
                                <div class="price-top">
                                    <span class="old-price">418.000đ</span>
                                    <div class="discount-badge">Giảm 20%</div>
                                </div>
                                <div class="price-bottom">
                                    <span class="new-price">335.000đ</span>
                                </div>
                            </div>
                            <div class="bottom">
                                <div class="star"><i class="fa-solid fa-star"></i> 3</div>
                                <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu thích</button>
                            </div>
                        </div>
                        <div class="product-card">
                            <a><img src="assets/img/maylamtoc.png" alt=""></a>
                            <a>
                                <p>Máy làm tóc đa năng 3 trong 1 uốn, là, ép kiểu Hàn Quốc, Màu đen</p>
                            </a>
                            <span class="price">266.000đ</span>
                            <div class="bottom">
                                <div class="star"><i class="fa-solid fa-star"></i> 3.5</div>
                                <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu thích</button>
                            </div>
                        </div>
                        <div class="product-card">
                            <a><img src="assets/img/khan.jpg" alt=""></a>
                            <a>
                                <p>Khăn lau xe ô tô chuyên dụng mềm mịn và thấm hút tốt, Loại 35cm x 35cm</p>
                            </a>
                            <div class="price-discount">
                                <div class="price-top">
                                    <span class="old-price">418.000đ</span>
                                    <div class="discount-badge">Giảm 20%</div>
                                </div>
                                <div class="price-bottom">
                                    <span class="new-price">335.000đ</span>
                                </div>
                            </div>
                            <div class="bottom">
                                <div class="star"><i class="fa-solid fa-star"></i> 4.2</div>
                                <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu thích</button>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- Sản phẩm giới hạn -->
                <section class="featured">
                    <h2>Sản phẩm giới hạn</h2>
                    <button class="scroll-btn left"><i class="fa-solid fa-chevron-left"></i></button>
                    <button class="scroll-btn right"><i class="fa-solid fa-chevron-right"></i></button>
                    <div class="product-list">
                        <div class="product-card">
                            <a><img src="assets/img/tuixach.jpg" alt=""></a>
                            <a>
                                <p>Túi xách Reeyee RY302B/G 2 trong 1</p>
                            </a>
                            <div class="price-discount">
                                <div class="price-top">
                                    <span class="old-price">1.120.000đ</span>
                                    <div class="discount-badge">Giảm 25%</div>
                                </div>
                                <div class="price-bottom">
                                    <span class="new-price">840.000đ</span>
                                </div>
                            </div>
                            <div class="bottom">
                                <div class="star"><i class="fa-solid fa-star"></i> 4.1</div>
                                <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu
                                    thích</button>
                            </div>
                        </div>
                        <div class="product-card">
                            <a><img src="assets/img/amthuoc.jpg" alt=""></a>
                            <a>
                                <p>Ấm sắc thuốc bắc tự động chất liệu gốm sứ cao cấp tự ngắt điện an toàn</p>
                            </a>
                            <span class="price">223.000đ</span>
                            <div class="bottom">
                                <div class="star"><i class="fa-solid fa-star"></i> 3.6</div>
                                <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu thích</button>
                            </div>
                        </div>

                        <div class="product-card">
                            <a><img src="assets/img/mayxay.jpg" alt=""></a>
                            <a>
                                <p>Máy xay đa năng cầm tay 6 lưỡi cối thủy tinh chịu nhiệt</p>
                            </a>
                            <span class="price">260.000đ</span>
                            <div class="bottom">
                                <div class="star"><i class="fa-solid fa-star"></i> 4.9</div>
                                <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu thích</button>
                            </div>
                        </div>
                        <div class="product-card">
                            <a><img src="assets/img/thotkinh.jpg" alt=""></a>
                            <a>
                                <p>Thớt kính cường lực chống rơi vỡ siêu bền
                                </p>
                            </a>
                            <div class="price-discount">
                                <div class="price-top">
                                    <span class="old-price">138.000đ</span>
                                    <div class="discount-badge">Giảm 10%</div>
                                </div>
                                <div class="price-bottom">
                                    <span class="new-price">124.000đ</span>
                                </div>
                            </div>
                            <div class="bottom">
                                <div class="star"><i class="fa-solid fa-star"></i> 4.7</div>
                                <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu thích</button>
                            </div>
                        </div>
                        <div class="product-card">
                            <a><img src="assets/img/bodungcu.jpg" alt=""></a>
                            <a>
                                <p>Bộ dụng cụ cắt, thái, gọt, nạo, bào sợi rau củ quả đa năng 14 trong 1 tiện lợi</p>
                            </a>
                            <span class="price">170.000đ</span>
                            <div class="bottom">
                                <div class="star"><i class="fa-solid fa-star"></i> 4.5</div>
                                <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu thích</button>
                            </div>
                        </div>
                        <div class="product-card">
                            <a><img src="assets/img/bogoui.jpg" alt=""></a>
                            <a>
                                <p>Bộ gối tựa đầu, gối tựa lưng massage 6 chế độ chất lượng cao</p>
                            </a>
                            <div class="price-discount">
                                <div class="price-top">
                                    <span class="old-price">624.000đ</span>
                                    <div class="discount-badge">Giảm 30%</div>
                                </div>
                                <div class="price-bottom">
                                    <span class="new-price">436.000đ</span>
                                </div>
                            </div>
                            <div class="bottom">
                                <div class="star"><i class="fa-solid fa-star"></i> 4</div>
                                <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu thích</button>
                            </div>
                        </div>
                        <div class="product-card">
                            <a><img src="assets/img/maylamtoc.png" alt=""></a>
                            <a>
                                <p>Máy làm tóc đa năng 3 trong 1 uốn, là, ép kiểu Hàn Quốc, Màu đen</p>
                            </a>
                            <span class="price">266.000đ</span>
                            <div class="bottom">
                                <div class="star"><i class="fa-solid fa-star"></i> 4.2</div>
                                <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu thích</button>
                            </div>
                        </div>
                        <div class="product-card">
                            <a><img src="assets/img/donghodientu.jpg" alt=""></a>
                            <a>
                                <p>Đồng hồ điện tử đeo tay chống nước thời trang siêu bền</p>
                            </a>
                            <div class="price-discount">
                                <div class="price-top">
                                    <span class="old-price">260.000đ</span>
                                    <div class="discount-badge">Giảm 20%</div>
                                </div>
                                <div class="price-bottom">
                                    <span class="new-price">312.000đ</span>
                                </div>
                            </div>
                            <div class="bottom">
                                <div class="star"><i class="fa-solid fa-star"></i> 5</div>
                                <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu thích</button>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>

        <section class="blog">
            <div class="grid wide">
                <div class="blog__inner">
                    <div class="blog__header">
                        <h2 class="blog__heading">Blog tin tức</h2>
                        <a href="#!" class="blog__view-all">Xem tất cả</a>
                    </div>
                    <div class="blog__list row small-gutter ">
                        <div class="col c-3 m-3 l-3">
                            <article class="blog-item">
                                <a href="blog.jsp" class="blog-item__link">
                                    <img src="assets/img/blog-img-01.jpg" alt="Hướng dẫn vệ sinh máy giặt"
                                         class="blog-item__img">
                                </a>
                                <div class="blog-item__content">
                                    <h3>
                                        <a class="blog-item__title" href="blog.jsp">Hướng dẫn vệ sinh máy giặt đúng
                                            cách</a>
                                    </h3>
                                    <p class="blog-item__desc">
                                        Máy giặt sử dụng lâu ngày không được vệ sinh đúng cách sẽ khiến máy giặt trở nên
                                        bẩn, bám cặn, điều này vô tình làm cho quần áo khi giặt sẽ không còn sạch và có
                                        mùi khó chịu. Nếu máy giặt nhà bạn có những dấu hiệu trên thì đã đến lúc để làm
                                        sạch máy giặt
                                    </p>
                                    <div class="blog-item__meta">
                                        <span class="blog-item__time">
                                            <i class="fa-regular fa-clock"></i>
                                            14/11/2025 • 10:30
                                        </span>
                                    </div>
                                </div>
                            </article>
                        </div>

                        <div class="col c-3 m-3 l-3">
                            <article class="blog-item">
                                <a href="#!" class="blog-item__link">
                                    <img src="assets/img/blog-img-02.jpg" alt="Hướng dẫn vệ sinh máy giặt"
                                         class="blog-item__img">
                                </a>
                                <div class="blog-item__content">
                                    <h3>
                                        <a class="blog-item__title" href="#!">Lợi ích của việc bảo quản thực phẩm bằng
                                            máy hút chân không</a>
                                    </h3>
                                    <p class="blog-item__desc">
                                        Bảo quản thực phẩm lâu hơn: Đây là lợi ích đầu tiên mà của máy hút chân không mà
                                        chúng ta cần phải kể đến. Với mỗi cơ sở sản xuất và chế biến thực phẩm thì việc
                                        bảo quản thực phẩm lâu dài, nhất là các loại thịt, cá, hải sản là điều vô cùng
                                        cần thiết
                                    </p>
                                    <div class="blog-item__meta">
                                        <span class="blog-item__time">
                                            <i class="fa-regular fa-clock"></i>
                                            14/11/2025 • 10:30
                                        </span>
                                    </div>
                                </div>
                            </article>
                        </div>

                        <div class="col c-3 m-3 l-3">
                            <article class="blog-item">
                                <a href="#!" class="blog-item__link">
                                    <img src="assets/img/blog-img-03.jpg" alt="Hướng dẫn vệ sinh máy giặt"
                                         class="blog-item__img">
                                </a>
                                <div class="blog-item__content">
                                    <h3>
                                        <a class="blog-item__title" href="#!">Cách sử dụng đèn bắt muỗi giúp tiêu diệt
                                            muỗi hiệu quả</a>
                                    </h3>
                                    <p class="blog-item__desc">
                                        Đèn bắt muỗi được các gia đình và nhiều người tin tưởng sử dụng. Sản phẩm không
                                        chỉ giúp tiêu diệt muỗi hiệu quả mà còn có thể dùng làm đèn ngủ. Bạn đã viết
                                        cách sử dụng đèn bắt muỗi sao cho đúng chưa?
                                    </p>
                                    <div class="blog-item__meta">
                                        <span class="blog-item__time">
                                            <i class="fa-regular fa-clock"></i>
                                            14/11/2025 • 10:30
                                        </span>
                                    </div>
                                </div>
                            </article>
                        </div>

                        <div class="col c-3 m-3 l-3">
                            <article class="blog-item">
                                <a href="#!" class="blog-item__link">
                                    <img src="assets/img/blog-img-04.jpg" alt="Hướng dẫn vệ sinh máy giặt"
                                         class="blog-item__img">
                                </a>
                                <div class="blog-item__content">
                                    <h3>
                                        <a class="blog-item__title" href="#!">Vệ sinh và bảo quản máy xay sinh tố đúng
                                            cách </a>
                                    </h3>
                                    <p class="blog-item__desc">
                                        Sau khi sử dụng, cần xoay đúng chiều để tháo cối ra. Vì có một số loại máy xay
                                        sinh tố phải xoay thuận hoặc ngược chiều với kim đồng hồ mới tháo ra được.
                                    </p>
                                    <div class="blog-item__meta">
                                        <span class="blog-item__time">
                                            <i class="blog-item__icon fa-regular fa-clock"></i>
                                            14/11/2025 • 10:30
                                        </span>
                                    </div>
                                </div>
                            </article>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
    <footer id="footer" class="footer">
        <div class="grid wide">
            <div class="footer__inner">
                <div class="footer__left">
                    <a href="#" class="logo">
                        <img class="logo__img" src="assets/img/logo.png" alt="webgiadung">
                    </a>
                    <ul class="footer-info">
                        <li class="footer-info__item">
                            <i class="footer-info__icon fa-solid fa-building"></i>
                            <p class="footer-info__text">
                                <span class="footer-info__label">Showroom tại Hà Nội:</span>
                                547 Đ. Xuân Đỉnh, Phường Xuân Đỉnh, Quận Bắc Từ Liêm, Hà Nội
                            </p>
                        </li>

                        <li class="footer-info__item">
                            <i class="footer-info__icon fa-solid fa-building"></i>
                            <p class="footer-info__text">
                                <span class="footer-info__label">Showroom tại HCM:</span>
                                555 Gia Phú, Phường 3, Quận 6, Thành phố Hồ Chí Minh
                            </p>
                        </li>

                        <li class="footer-info__item">
                            <i class="footer-info__icon fa-solid fa-phone-volume"></i>
                            <p class="footer-info__text">
                                <span class="footer-info__label">Hotline:</span>
                                <a href="#!" class="footer-info__link">1900.6750</a>
                            </p>
                        </li>

                        <li class="footer-info__item">
                            <i class="footer-info__icon fa-solid fa-envelope"></i>
                            <p class="footer-info__text">
                                <span class="footer-info__label">Email:</span>
                                <a href="#!" class="footer-info__link">cskh@webgiadung.com</a>
                            </p>
                        </li>
                    </ul>

                </div>
                <div class="footer__right">
                    <div class="footer__row">
                        <section class="footer-column">
                            <h3 class="footer__heading">Chăm sóc khách hàng</h3>
                            <ul class="footer-column__list">
                                <li class="footer-column__item">
                                    <a href="#!" class="footer-column__link">Trung tâm trợ giúp</a>
                                </li>
                                <li class="footer-column__item">
                                    <a href="#!" class="footer-column__link">Hướng dẫn mua hàng</a>
                                </li>
                                <li class="footer-column__item">
                                    <a href="#!" class="footer-column__link">Trả hàng/Hoàn tiền</a>
                                </li>
                                <li class="footer-column__item">
                                    <a href="#!" class="footer-column__link">Chính sách bảo hành</a>
                                </li>
                            </ul>
                        </section>

                        <section class="footer-column">
                            <h3 class="footer__heading">Về WebGiaDung</h3>
                            <ul class="footer-column__list">
                                <li class="footer-column__item">
                                    <a href="#!" class="footer-column__link">Giới thiệu</a>
                                </li>
                                <li class="footer-column__item">
                                    <a href="#!" class="footer-column__link">Liên hệ</a>
                                </li>
                                <li class="footer-column__item">
                                    <a href="#!" class="footer-column__link">Tuyển dụng</a>
                                </li>
                            </ul>
                        </section>

                        <section class="footer-column">
                            <h3 class="footer__heading">Danh mục</h3>
                            <ul class="footer-column__list">
                                <li class="footer-column__item">
                                    <a href="#!" class="footer-column__link">Thiết bị message</a>
                                </li>
                                <li class="footer-column__item">
                                    <a href="#!" class="footer-column__link">Thiết bị chăm sóc sức khỏe</a>
                                </li>
                                <li class="footer-column__item">
                                    <a href="#!" class="footer-column__link">Phụ kiện thời trang</a>
                                </li>
                                <li class="footer-column__item">
                                    <a href="#!" class="footer-column__link">Đồ dùng cho mẹ</a>
                                </li>
                            </ul>
                        </section>

                        <section class="footer-column">
                            <h3 class="footer__heading">Theo dõi</h3>
                            <div class="socials">
                                <a href="#!" class="socials__link">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 14 14"
                                        fill="none">
                                        <path opacity="0.7"
                                            d="M12.4444 0H1.55556C0.7 0 0 0.7 0 1.55556V12.4444C0 13.3008 0.7 14 1.55556 14H7V8.55556H5.44444V6.63056H7V5.03611C7 3.353 7.94267 2.17078 9.92911 2.17078L11.3314 2.17233V4.19844H10.4004C9.62733 4.19844 9.33333 4.77867 9.33333 5.31689V6.63133H11.3307L10.8889 8.55556H9.33333V14H12.4444C13.3 14 14 13.3008 14 12.4444V1.55556C14 0.7 13.3 0 12.4444 0Z"
                                            fill="#000958" />
                                    </svg>
                                </a>
                                <a href="#!" class="socials__link">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="15" height="12" viewBox="0 0 15 12"
                                        fill="none">
                                        <path opacity="0.7"
                                            d="M4.58338 11.9998C5.70216 12.007 6.8112 11.7889 7.84618 11.3583C8.88116 10.9277 9.82148 10.2931 10.6126 9.49132C11.4037 8.68956 12.0299 7.73659 12.4548 6.68769C12.8797 5.63878 13.0948 4.51481 13.0878 3.38098V2.98494C13.6677 2.55432 14.1697 2.02517 14.5714 1.42093C14.0253 1.66298 13.4475 1.82351 12.856 1.89751C13.4831 1.51878 13.9537 0.922635 14.1806 0.219387C13.5962 0.574774 12.9552 0.82461 12.2864 0.957762C11.8359 0.471352 11.2399 0.148943 10.5904 0.0404223C9.94098 -0.0680986 9.27434 0.0433178 8.69367 0.357432C8.113 0.671547 7.65065 1.17085 7.37818 1.77808C7.10571 2.38531 7.03829 3.06663 7.18636 3.7166C5.99815 3.65749 4.83554 3.34541 3.77424 2.80068C2.71294 2.25595 1.77675 1.49079 1.02662 0.555012C0.648377 1.22034 0.533729 2.00647 0.705893 2.75424C0.878056 3.50202 1.32417 4.15555 1.9539 4.58251C1.48934 4.56436 1.03553 4.43558 0.629221 4.20661V4.24018C0.625093 4.93548 0.856218 5.61122 1.28408 6.15476C1.71193 6.69831 2.31068 7.07683 2.98052 7.22724C2.54844 7.34502 2.09583 7.36337 1.65584 7.28094C1.84977 7.87391 2.21995 8.39157 2.71562 8.76292C3.21128 9.13426 3.80817 9.34111 4.42442 9.3551C3.37078 10.2147 2.06126 10.6878 0.708701 10.6976C0.471554 10.6906 0.234962 10.6705 0 10.6372C1.36902 11.5212 2.96012 11.9872 4.58338 11.9797"
                                            fill="#000958" />
                                    </svg>
                                </a>
                                <a href="#!" class="socials__link">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 14 14"
                                        fill="none">
                                        <path opacity="0.7"
                                            d="M13.2222 0H0.777778C0.571498 0 0.373667 0.0819442 0.227806 0.227806C0.0819442 0.373667 0 0.571498 0 0.777778V13.2222C0 13.4285 0.0819442 13.6263 0.227806 13.7722C0.373667 13.9181 0.571498 14 0.777778 14H13.2222C13.4285 14 13.6263 13.9181 13.7722 13.7722C13.9181 13.6263 14 13.4285 14 13.2222V0.777778C14 0.571498 13.9181 0.373667 13.7722 0.227806C13.6263 0.0819442 13.4285 0 13.2222 0ZM4.15256 11.9288H2.07433V5.24767H4.15256V11.9288ZM3.11344 4.33533C2.79412 4.33533 2.48788 4.20848 2.26209 3.98269C2.03629 3.7569 1.90944 3.45065 1.90944 3.13133C1.90944 2.81201 2.03629 2.50577 2.26209 2.27998C2.48788 2.05418 2.79412 1.92733 3.11344 1.92733C3.43277 1.92733 3.73901 2.05418 3.9648 2.27998C4.19059 2.50577 4.31744 2.81201 4.31744 3.13133C4.31744 3.45065 4.19059 3.7569 3.9648 3.98269C3.73901 4.20848 3.43277 4.33533 3.11344 4.33533ZM11.9296 11.9288H9.85367V8.68C9.85367 7.90533 9.83967 6.909 8.77411 6.909C7.693 6.909 7.52889 7.75367 7.52889 8.62556V11.9296H5.45456V5.24844H7.44567V6.16156H7.47444C7.75056 5.63656 8.42878 5.08278 9.43756 5.08278C11.5407 5.08278 11.9288 6.46567 11.9288 8.26544V11.9288H11.9296Z"
                                            fill="#000958" />
                                    </svg>
                                </a>
                                <a href="#!" class="socials__link">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 14 14"
                                        fill="none">
                                        <path opacity="0.7" fill-rule="evenodd" clip-rule="evenodd"
                                            d="M7 0C5.0988 0 4.8608 0.00839996 4.1139 0.042C3.3691 0.0763 2.8602 0.1946 2.415 0.3675C1.94774 0.543091 1.52443 0.818532 1.1746 1.1746C0.818549 1.52444 0.543112 1.94775 0.3675 2.415C0.1946 2.8602 0.0763 3.3691 0.042 4.1139C0.00769996 4.8608 0 5.0988 0 7C0 8.9012 0.00769996 9.1392 0.042 9.8861C0.0763 10.6309 0.1946 11.1398 0.3675 11.585C0.543132 12.0522 0.818567 12.4755 1.1746 12.8254C1.52446 13.1814 1.94776 13.4569 2.415 13.6325C2.8602 13.8054 3.3691 13.9237 4.1139 13.958C4.8608 13.9916 5.0988 14 7 14C8.9012 14 9.1392 13.9916 9.8861 13.958C10.6309 13.9237 11.1398 13.8054 11.585 13.6325C12.0522 13.4569 12.4756 13.1815 12.8254 12.8254C13.1815 12.4756 13.4569 12.0522 13.6325 11.585C13.8054 11.1398 13.9237 10.6309 13.958 9.8861C13.9916 9.1392 14 8.9012 14 7C14 5.0988 13.9916 4.8608 13.958 4.1139C13.9237 3.3691 13.8054 2.8602 13.6325 2.415C13.4569 1.94775 13.1815 1.52444 12.8254 1.1746C12.4756 0.818532 12.0523 0.543091 11.585 0.3675C11.1398 0.1946 10.6309 0.0763 9.8861 0.042C9.1392 0.00839996 8.9012 0 7 0ZM7 1.2614C8.869 1.2614 9.0902 1.2684 9.828 1.302C10.5112 1.3335 10.8815 1.4469 11.1286 1.5428C11.4548 1.6702 11.6886 1.8221 11.9336 2.0664C12.1786 2.3114 12.3298 2.5452 12.4572 2.8714C12.5524 3.1185 12.6672 3.4888 12.698 4.1713C12.7316 4.9098 12.7386 5.1303 12.7386 7C12.7386 8.869 12.7316 9.0902 12.698 9.828C12.6665 10.5112 12.5524 10.8815 12.4572 11.1286C12.345 11.4327 12.1661 11.7077 11.9336 11.9336C11.6886 12.1786 11.4548 12.3298 11.1286 12.4572C10.8815 12.5524 10.5112 12.6672 9.8287 12.698C9.0909 12.7316 8.8697 12.7386 7 12.7386C5.131 12.7386 4.9091 12.7316 4.172 12.698C3.4888 12.6665 3.1185 12.5524 2.8714 12.4572C2.56731 12.345 2.29223 12.1661 2.0664 11.9336C1.8339 11.7078 1.65498 11.4327 1.5428 11.1286C1.4469 10.8815 1.3328 10.5112 1.302 9.8287C1.2684 9.0902 1.2614 8.8697 1.2614 7C1.2614 5.131 1.2684 4.9098 1.302 4.172C1.3335 3.4888 1.4469 3.1185 1.5428 2.8714C1.6702 2.5452 1.8221 2.3114 2.0664 2.0664C2.3114 1.8214 2.5452 1.6702 2.8714 1.5428C3.1185 1.4469 3.4888 1.3328 4.1713 1.302C4.9098 1.2684 5.1303 1.2614 7 1.2614ZM7 9.3331C6.38122 9.3331 5.78779 9.08729 5.35025 8.64975C4.91271 8.21221 4.6669 7.61878 4.6669 7C4.6669 6.38122 4.91271 5.78779 5.35025 5.35025C5.78779 4.91271 6.38122 4.6669 7 4.6669C7.61878 4.6669 8.21221 4.91271 8.64975 5.35025C9.08729 5.78779 9.3331 6.38122 9.3331 7C9.3331 7.61878 9.08729 8.21221 8.64975 8.64975C8.21221 9.08729 7.61878 9.3331 7 9.3331ZM7 3.4055C6.52796 3.4055 6.06055 3.49847 5.62444 3.67911C5.18834 3.85976 4.79208 4.12452 4.4583 4.4583C4.12452 4.79209 3.85976 5.18834 3.67911 5.62444C3.49847 6.06055 3.4055 6.52796 3.4055 7C3.4055 7.47204 3.49847 7.93945 3.67911 8.37556C3.85976 8.81166 4.12452 9.20791 4.4583 9.54169C4.79208 9.87547 5.18834 10.1402 5.62444 10.3209C6.06055 10.5015 6.52796 10.5945 7 10.5945C7.95332 10.5945 8.8676 10.2158 9.54169 9.54169C10.2158 8.8676 10.5945 7.95332 10.5945 7C10.5945 6.04668 10.2158 5.1324 9.54169 4.4583C8.8676 3.78421 7.95332 3.4055 7 3.4055ZM11.5766 3.2634C11.5766 3.37371 11.5549 3.48294 11.5127 3.58485C11.4704 3.68677 11.4086 3.77937 11.3306 3.85737C11.2526 3.93537 11.16 3.99724 11.0581 4.03946C10.9561 4.08167 10.8469 4.1034 10.7366 4.1034C10.6263 4.1034 10.5171 4.08167 10.4151 4.03946C10.3132 3.99724 10.2206 3.93537 10.1426 3.85737C10.0646 3.77937 10.0028 3.68677 9.96054 3.58485C9.91833 3.48294 9.8966 3.37371 9.8966 3.2634C9.8966 3.04062 9.9851 2.82696 10.1426 2.66943C10.3002 2.5119 10.5138 2.4234 10.7366 2.4234C10.9594 2.4234 11.173 2.5119 11.3306 2.66943C11.4881 2.82696 11.5766 3.04062 11.5766 3.2634Z"
                                            fill="#000958" />
                                    </svg>
                                </a>
                            </div>
                        </section>
                    </div>
                </div>
            </div>
        </div>

        <div class="footer__copyright">
            <div class="grid">
                <p class="footer__text">© 2025 - Bản quyền thuộc về Công ty TNHH HAH</p>
            </div>
        </div>
    </footer>
</body>

<!-- Link JS -->
<script src="assets/js/script.js"></script>

</html>

</html>