<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thanh toán - WebGiaDung</title>
    <link rel="stylesheet" href="assets/css/reset.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300..800;1,300..800&family=Poppins:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css"
        integrity="sha512-2SwdPD6INVrV/lHTZbO2nodKhrnDdJK9/kg2XD1r9uGqPo1cUbujc+IYdlYdEErWNu69gVcYgdxlmVmzTWnetw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="assets/css/grid.css">
    <link rel="stylesheet" href="assets/css/base.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/checkout.css">
</head>

<body>

    <header id="header" class="header header-checkout">

        <div class="header-top">
            <div class="grid wide">
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
                            </a>
                            <div class="navbar-notify">
                                <div class="navbar-notify__wrap">
                                    <header class="navbar-notify__header">
                                        <h3 class="navbar-notify__heading">Thông báo mới nhận</h3>
                                    </header>

                                    <ul class="navbar-notify__list">
                                        <li class="navbar-notify__item navbar-notify__item--view">
                                            <a href="#!" class="navbar-notify__link">
                                                <img class="navbar-notify__login-img"
                                                    src="assets/img/notify-img-01.png"
                                                    alt="Túi đựng quần áo, chăn ga">
                                                <div class="navbar-notify__content">
                                                    <span class="navbar-notify__title">Tặng ngay 1 túi đựng quần áo,
                                                        chăn ga Tặng ngay 1 túi đựng quần áo, chăn ga</span>
                                                    <span class="navbar-notify__describe">Khuyến mãi siêu hot</span>
                                                </div>
                                            </a>
                                        </li>

                                        <li class="navbar-notify__item">
                                            <a href="#!" class="navbar-notify__link">
                                                <img class="navbar-notify__login-img"
                                                    src="assets/img/notify-img-02.jpg"
                                                    alt="Túi đựng quần áo, chăn ga">
                                                <div class="navbar-notify__content">
                                                    <span class="navbar-notify__title">Combo 12 viên vệ sinh lồng
                                                        máy giặt, diệt khuẩn tiện lợi</span>
                                                    <span class="navbar-notify__describe">Khuyến mãi siêu hot</span>
                                                </div>
                                            </a>
                                        </li>

                                        <li class="navbar-notify__item">
                                            <a href="#!" class="navbar-notify__link">
                                                <img class="navbar-notify__login-img"
                                                    src="assets/img/notify-img-03.jpg"
                                                    alt="Túi đựng quần áo, chăn ga">
                                                <div class="navbar-notify__content">
                                                    <span class="navbar-notify__title">Khăn lau xe ô tô chuyên dụng
                                                        mềm mịn và thấm hút tốt, Loại 35cm x 35cm</span>
                                                    <span class="navbar-notify__describe">Khuyến mãi siêu hot</span>
                                                </div>
                                            </a>
                                        </li>
                                    </ul>
                                    <div class="navbar-notify__footer">
                                        <a href="" class="navbar-notify__btn">Xem tất cả</a>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="navbar__item">
                            <i class="navbar__item-symbol fa-solid fa-circle-question"></i>
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
                                        <a href="account.jsp#info" class="navbar-user__link">Tài khoản của tôi</a>
                                    </li>
                                    <li class="navbar-user__item">
                                        <a href="account.jsp#favorite-product" class="navbar-user__link">Yêu thích</a>
                                    </li>
                                    <li class="navbar-user__item">
                                        <a href="account.jsp#orders-all" class="navbar-user__link">Thông tin đơn hàng</a>
                                    </li>
                                    <li class="navbar-user__item navbar-user__item--separate">
                                        <a href="login.jsp" class="navbar-user__link">Đăng xuất</a>
                                    </li>
                                </ul>
                            </li>
                        </c:if>
                    </ul>
                </nav>
            </div>
        </div>
        <div class="grid wide">
            <div class="header-checkout-content">
                <a href="#!" class="logo">
                    <img class="logo__img" src="assets/img/logo.png" alt="webgiadung">
                </a>
                <h1 class="checkout-heading-main">THANH TOÁN</h1>
            </div>
        </div>
    </header>

    <main class="main" style="background-color: #f5f5f5; padding-top: 20px;">
        <div class="grid wide">
            <form action="${pageContext.request.contextPath}/checkout" method="post">
                <div class="row">

                    <div class="col l-8 m-12 c-12">

                        <section class="checkout-section shipping-info-section">
                            <h2 class="section-title">
                                <i class="fa-solid fa-location-dot"></i> Địa chỉ nhận hàng
                            </h2>

                            <div class="current-address">
                                <p class="address-name-phone">
                                    **Nguyễn Văn A** (+84) 1234567989
                                </p>
                                <p class="address-detail">
                                    123,abc, Phường XYZ, Quận 1, Thành phố Hồ Chí Minh
                                </p>
                                <a href="#!" class="change-address-link">THAY ĐỔI</a>
                            </div>
                        </section>

                        <section class="checkout-section shipping-method-section">
                            <h2 class="section-title">
                                <i class="fa-solid fa-truck-fast"></i> Phương thức Vận chuyển
                            </h2>
                            <div class="shipping-options">
                                <label class="shipping-option">
                                    <input type="radio" name="shipping-method" value="standard" checked>
                                    <div class="shipping-details">
                                        <p class="shipping-name">Giao hàng Tiêu Chuẩn</p>
                                        <span class="shipping-time">Nhận hàng dự kiến: 2 - 4 ngày</span>
                                    </div>
                                    <span class="shipping-price">25.000đ</span>
                                </label>

                                <label class="shipping-option">
                                    <input type="radio" name="shipping-method" value="express">
                                    <div class="shipping-details">
                                        <p class="shipping-name">Giao hàng Hỏa Tốc</p>
                                        <span class="shipping-time">Nhận hàng dự kiến: Trong 24h</span>
                                    </div>
                                    <span class="shipping-price">50.000đ</span>
                                </label>
                            </div>
                        </section>

                        <section class="checkout-section payment-method-section">
                            <h2 class="section-title">
                                <i class="fa-solid fa-credit-card"></i> Phương thức Thanh toán
                            </h2>
                            <div class="payment-options">
                                <label class="payment-option">
                                    <input type="radio" name="payment" value="cod" checked>
                                    <span class="custom-radio"></span>
                                    Thanh toán khi nhận hàng (COD)
                                </label>
                                <label class="payment-option">
                                    <input type="radio" name="payment" value="bank">
                                    <span class="custom-radio"></span>
                                    Chuyển khoản ngân hàng (QR Code)
                                </label>
                                <label class="payment-option">
                                    <input type="radio" name="payment" value="e-wallet">
                                    <span class="custom-radio"></span>
                                    Ví điện tử (Momo, ZaloPay,...)
                                </label>
                            </div>
                        </section>

                        <section class="checkout-section note-section">
                            <h2 class="section-title">Ghi chú đơn hàng (Tùy chọn)</h2>
                            <textarea id="note" name="note" rows="2" placeholder="Ví dụ: Giao ngoài giờ hành chính..."></textarea>


                        </section>
                    </div>

                    <div class="col l-4 m-12 c-12">
                        <section class="checkout-section order-summary sticky-summary">
                            <h2 class="section-title">Tóm tắt Đơn hàng</h2>

                            <div class="product-list-summary">
                                <c:choose>
                                    <c:when test="${empty items}">
                                        <p style="padding:12px 0;">Giỏ hàng trống. Vui lòng quay lại giỏ hàng.</p>
                                        <a class="btn btn--default-color" href="${pageContext.request.contextPath}/cart">Về giỏ hàng</a>
                                    </c:when>

                                    <c:otherwise>
                                        <c:forEach var="item" items="${items}">
                                            <div class="summary-product-item">

                                                <%-- Ảnh: nhớ thêm contextPath để khỏi lỗi đường dẫn --%>
                                                <img
                                                    src="${pageContext.request.contextPath}/${item.product.image}"
                                                    alt="${item.product.name}"
                                                    class="summary-thumb"
                                                    onerror="this.src='${pageContext.request.contextPath}/assets/img/no-image.png';"
                                                >

                                                <div class="summary-product-details">
                                                    <p class="summary-product-name">${item.product.name}</p>
                                                    <span class="summary-quantity">SL: ${item.quantity}</span>
                                                </div>

                                                <span class="summary-price">
                                                    <fmt:formatNumber value="${item.totalPrice}" type="number" />đ
                                                </span>
                                            </div>
                                        </c:forEach>
                                    </c:otherwise>
                                </c:choose>
                            </div>


                            <div class="summary-line">
                                <span>Tạm tính (${totalQuantity} SP):</span>
                                <span><fmt:formatNumber value="${totalPrice}" type="number" />đ</span>
                            </div>
                            <c:set var="ship" value="25000" />
                            <div class="summary-line">
                                <span>Phí vận chuyển:</span>
                                <span class="shipping-cost"><fmt:formatNumber value="${ship}" type="number" />đ</span>
                            </div>
                            <div class="summary-line coupon">
                                <span>Mã giảm giá:</span>
                                <span class="coupon-discount">- 50.000đ</span>
                            </div>

                            <div class="summary-total-final">
                                <span>TỔNG THANH TOÁN:</span>
                                <span class="final-price">
                                    <fmt:formatNumber value="${totalPrice + ship}" type="number" />đ
                                </span>
                            </div>

                            <button type="submit" class="btn btn--primary btn-place-order">ĐẶT HÀNG</button>

                        </section>
                    </div>
                </div>
            </form>
        </div>
    </main>

    <!-- Footer -->
    <jsp:include page="/common/footer.jsp" />
</body>

</html>