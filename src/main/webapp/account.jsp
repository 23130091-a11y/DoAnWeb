<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 07/12/2025
  Time: 3:07 CH
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tài khoản của</title>

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
    <link rel="stylesheet" href="assets/css/search.css">
    <link rel="stylesheet" href="assets/css/account.css">

    <!-- Link favicon -->
</head>

<body>
<!-- header -->
<%@ include file="/common/header.jsp" %>

<main class="main">
    <div class="account">
        <div class="grid wide">
            <div class="row small-gutter">
                <div class="col l-2 m-0 c-0">
                    <aside class="account__sidebar">
                        <!-- Nhóm: Tài khoản -->
                        <section class="account__section">
                            <h2 class="account__title">Tài khoản của tôi</h2>
                            <ul class="account__list">
                                <li class="account__item">
                                    <a href="#info" class="account__link account__link--active">Thông tin cá
                                        nhân</a>
                                </li>
                                <li class="account__item">
                                    <a href="#address" class="account__link">Địa chỉ</a>
                                </li>
                                <li class="account__item">
                                    <a href="#password" class="account__link">Đổi mật khẩu</a>
                                </li>
                            </ul>
                        </section>

                        <!-- Nhóm: Yêu thích -->
                        <section class="account__section">
                            <h2 class="account__title">Yêu thích</h2>
                            <ul class="account__list">
                                <li class="account__item">
                                    <a href="#favorite-product" class="account__link">Sản phẩm đã thích</a>
                                </li>
                            </ul>
                        </section>

                        <!-- Nhóm: Thông tin đơn hàng -->
                        <section class="account__section">
                            <h2 class="account__title">Thông tin đơn hàng</h2>
                            <ul class="account__list">
                                <li class="account__item">
                                    <a href="#orders-all" class="account__link">Tất cả đơn hàng</a>
                                </li>
                                <li class="account__item">
                                    <a href="#orders-processing" class="account__link">Đơn đang xử lý</a>
                                </li>
                                <li class="account__item">
                                    <a href="#orders-delivered" class="account__link">Đơn đã giao</a>
                                </li>
                                <li class="account__item">
                                    <a href="#orders-cancelled" class="account__link">Đơn đã hủy</a>
                                </li>
                            </ul>
                        </section>
                    </aside>
                </div>

                <!-- Khối nội dung chính -->
                <div class="col l-10 m-12 c-12">
                    <section id="info" class="account__content">
                        <h2 class="account__heading">Thông tin cá nhân</h2>

                        <form class="account__form" action="${pageContext.request.contextPath}/account" method="post">
                            <input type="hidden" name="action" value="updateProfile">

                            <!-- Họ và tên -->
                            <div class="account__form-group">
                                <label for="fullname" class="account__label">Họ và tên</label>
                                <input type="text" id="fullname" name="name" class="account__input"
                                       value="${sessionScope.user.name}" required>
                            </div>

                            <!-- Số điện thoại -->
                            <div class="account__form-group">
                                <label for="phone" class="account__label">Số điện thoại</label>
                                <input type="tel" id="phone" name="phone" class="account__input"
                                       value="${sessionScope.user.phone}">
                            </div>

                            <c:if test="${not empty profileMsg}">
                                <p style="color:green;margin:8px 0;">${profileMsg}</p>
                            </c:if>
                            <c:if test="${not empty profileError}">
                                <p style="color:red;margin:8px 0;">${profileError}</p>
                            </c:if>

                            <button type="submit" class="account__btn btn btn--default-color">Lưu thông tin</button>
                        </form>
                    </section>

                    <section id="address" class="account__content">
                        <h2 class="account__heading">Địa chỉ</h2>

                        <form id="addressForm" class="account__form" action="${pageContext.request.contextPath}/account" method="post">
                            <input type="hidden" name="action" value="updateProfile">

                            <!-- Tỉnh/thành phố -->
                            <div class="account__form-group">
                                <label for="tinh" class="account__label">Tỉnh/thành phố</label>
                                <select id="tinh" name="tinh" class="account__select" required>
                                    <option value="">Chọn tỉnh/thành phố</option>
                                    <option value="HN">Hà Nội</option>
                                    <option value="HCM">TP. Hồ Chí Minh</option>
                                    <option value="DN">Đà Nẵng</option>
                                </select>
                            </div>

                            <!-- Quận/huyện -->
                            <div class="account__form-group">
                                <label for="huyen" class="account__label">Quận/huyện</label>
                                <select id="huyen" name="huyen" class="account__select" required>
                                    <option value="">Chọn quận/huyện</option>
                                    <option value="Q1">Quận 1</option>
                                    <option value="Q3">Quận 3</option>
                                    <option value="Q5">Quận 5</option>
                                </select>
                            </div>

                            <!-- Địa chỉ (LƯU VÀO users.address) -->
                            <div class="account__form-group">
                                <label for="diachi" class="account__label">Địa chỉ</label>
                                <input type="text" id="diachi" name="address" class="account__input"
                                       value="${sessionScope.user.address}" required>
                            </div>

                            <c:if test="${not empty profileMsg}">
                                <p style="color:green;margin:8px 0;">${profileMsg}</p>
                            </c:if>
                            <c:if test="${not empty profileError}">
                                <p style="color:red;margin:8px 0;">${profileError}</p>
                            </c:if>

                            <button type="submit" class="account__btn btn btn--default-color">Lưu thông tin</button>
                        </form>
                    </section>

                    <section id="password" class="account__content">
                        <h2 class="account__heading">Đổi mật khẩu</h2>

                        <form class="account__form" action="${pageContext.request.contextPath}/account" method="post">
                            <input type="hidden" name="action" value="changePassword">

                            <!-- Mật khẩu hiện tại -->
                            <div class="account__form-group">
                                <label for="current-password" class="account__label">Mật khẩu hiện tại</label>
                                <input type="password" id="current-password" name="oldPassword"
                                       class="account__input" required>
                            </div>

                            <!-- Mật khẩu mới -->
                            <div class="account__form-group">
                                <label for="new-password" class="account__label">Mật khẩu mới</label>
                                <input type="password" id="new-password" name="newPassword"
                                       class="account__input" required>
                            </div>

                            <!-- Xác nhận mật khẩu mới -->
                            <div class="account__form-group">
                                <label for="confirm-password" class="account__label">Xác nhận mật khẩu mới</label>
                                <input type="password" id="confirm-password" name="confirmPassword"
                                       class="account__input" required>
                            </div>

                            <c:if test="${not empty passMsg}">
                                <p style="color:green;margin:8px 0;">${passMsg}</p>
                            </c:if>
                            <c:if test="${not empty passError}">
                                <p style="color:red;margin:8px 0;">${passError}</p>
                            </c:if>

                            <button type="submit" class="account__btn btn btn--default-color">Lưu thông tin</button>
                        </form>
                    </section>

                    <section class="account-section__content" id="orders-all">
                      <c:forEach var="o" items="${orders}">
                        <article class="order-item">
                          <header class="order-item__header">
                            <div>
                              <div>Mã đơn: #${o.id}</div>
                              <div>Ngày đặt: <fmt:formatDate value="${o.created_at}" pattern="dd/MM/yyyy HH:mm"/></div>
                            </div>
                          </header>

                          <section class="order-item__body">
                            <c:forEach var="it" items="${orderItemsMap[o.id]}">
                              <div class="order-product">
                                <div class="order-product__info">
                                  <h4 class="order-product__name">${it.product_name}</h4>
                                  <span class="order-product__quantity">x ${it.quantity}</span>
                                </div>
                                <div class="order-product__price-wrap">
                                  <span class="order-product__final-price">${it.total_price}đ</span>
                                </div>
                              </div>
                            </c:forEach>
                          </section>

                          <footer class="order-item__footer">
                            <div class="order-item__total">
                              <span>Thành tiền:</span>
                              <span class="order-item__total-price">${o.total_price}đ</span>
                            </div>
                          </footer>
                        </article>
                      </c:forEach>
                    </section>

                    <section id="orders-processing" class="account__content">
                        <h2 class="account__heading">Đơn đang xử lý</h2>
                        <div class="order-list">
                            <article class="order-item">
                                <header class="order-item__header">
                                    <div class="order-item__info">
                                        <span class="order-item__id">Mã đơn: #123456</span>
                                        <span class="order-item__date">Ngày đặt: 10/11/2025</span>
                                    </div>
                                    <span class="order-item__status order-item__status--processing">Đang xử
                                            lý</span>
                                </header>
                                <section class="order-item__body">
                                    <div class="order-product">
                                        <img src="assets/img/notify-img-01.png" alt="Túi đựng quần áo"
                                             class="order-product__img">
                                        <div class="order-product__info">
                                            <h4 class="order-product__name">Tặng ngay 1 túi đựng quần áo, chăn ga
                                            </h4>
                                            <span class="order-product__quantity">x 1</span>
                                        </div>
                                        <div class="order-product__price-wrap">
                                            <span class="order-product__original-price">25.000đ</span>
                                            <span class="order-product__final-price">19.300đ</span>
                                        </div>
                                    </div>
                                </section>
                                <footer class="order-item__footer">
                                    <div class="order-item__total">
                                        <span class="order-item__total-label">Thành tiền:</span>
                                        <span class="order-item__total-price">19.300đ</span>
                                    </div>
                                    <button type="button" class="order-item__action-btn">Hủy đơn</button>
                                </footer>
                            </article>
                        </div>
                    </section>

                    <section id="orders-delivered" class="account__content">
                        <h2 class="account__heading">Đơn đã giao</h2>
                        <div class="order-list">
                            <article class="order-item">
                                <header class="order-item__header">
                                    <div class="order-item__info">
                                        <span class="order-item__id">Mã đơn: #123455</span>
                                        <span class="order-item__date">Ngày đặt: 08/11/2025</span>
                                    </div>
                                    <span class="order-item__status order-item__status--delivered">Đã giao</span>
                                </header>
                                <section class="order-item__body">
                                    <div class="order-product">
                                        <img src="assets/img/notify-img-02.jpg" alt="Viên vệ sinh"
                                             class="order-product__img">
                                        <div class="order-product__info">
                                            <h4 class="order-product__name">Combo 12 viên vệ sinh lồng máy giặt</h4>
                                            <span class="order-product__quantity">x 2</span>
                                        </div>
                                        <div class="order-product__price-wrap">
                                            <span class="order-product__original-price">50.000đ</span>
                                            <span class="order-product__final-price">44.500đ</span>
                                        </div>
                                    </div>
                                </section>
                                <footer class="order-item__footer">
                                    <div class="order-item__total">
                                        <span class="order-item__total-label">Thành tiền:</span>
                                        <span class="order-item__total-price">44.500đ</span>
                                    </div>
                                    <button type="button"
                                            class="order-item__action-btn order-item__action-btn--primary">Mua
                                        lại</button>
                                </footer>
                            </article>
                        </div>
                    </section>

                    <section id="orders-cancelled" class="account__content">
                        <h2 class="account__heading">Đơn đã hủy</h2>
                        <div class="order-list">
                            <article class="order-item">
                                <header class="order-item__header">
                                    <div class="order-item__info">
                                        <span class="order-item__id">Mã đơn: #123454</span>
                                        <span class="order-item__date">Ngày đặt: 01/11/2025</span>
                                    </div>
                                    <span class="order-item__status order-item__status--cancelled">Đã hủy</span>
                                </header>
                                <section class="order-item__body">
                                    <div class="order-product">
                                        <img src="https://pos.nvncdn.com/e8033b-157317/ps/20251029_JExQSE5UKT.jpeg?v=1761702921"
                                             alt="Đĩa sứ" class="order-product__img">
                                        <div class="order-product__info">
                                            <h4 class="order-product__name">Đĩa Sứ Tròn 8.5inch CHIBI</h4>
                                            <span class="order-product__quantity">x 1</span>
                                        </div>
                                        <div class="order-product__price-wrap">
                                            <span class="order-product__final-price">44.500đ</span>
                                        </div>
                                    </div>
                                </section>
                                <footer class="order-item__footer">
                                    <div class="order-item__total">
                                        <span class="order-item__total-label">Thành tiền:</span>
                                        <span class="order-item__total-price">44.500đ</span>
                                    </div>
                                    <button type="button"
                                            class="order-item__action-btn order-item__action-btn--primary">Mua
                                        lại</button>
                                </footer>
                            </article>
                        </div>
                    </section>
                    <section id="favorite-product" class="account__content">
                        <h2 class="account__heading">Sản phẩm đã thích</h2>
                        <div class="favorite-product-list row small-gutter">
                            <div class="col l-3 m-4 c-6">
                                <div class="product-card">
                                    <a><img src="assets/img/giado.jpg" alt=""></a>
                                    <a>
                                        <p>Giá đỡ chuyển đổi máy cầm tay thành máy bàn chuyên dụng, đa năng và an
                                            toàn khi thao tác
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
                                    <div class="cart">
                                        <i class="fa-solid fa-cart-shopping content-details__cart-icon"></i>
                                        Thêm vào giỏ hàng
                                    </div>
                                    <div class="bottom">
                                        <div class="star"><i class="fa-solid fa-star"></i> 4.9</div>
                                        <button class="fav-btn"><i class="fa-solid fa-heart"></i> Yêu
                                            thích</button>
                                    </div>
                                </div>
                            </div>
                            <div class="col l-3 m-4 c-6">
                                <div class="product-card">
                                    <a><img src="assets/img/mayhutbui.jpg" alt=""></a>
                                    <a>
                                        <p>Máy hút bụi cầm tay không dây đa năng, nhỏ gọn, lực hút mạnh</p>
                                    </a>
                                    <div class="price-discount">
                                        <div class="price-top">
                                            <span class="old-price">552.000đ</span>
                                            <div class="discount-badge">Giảm 20%</div>
                                        </div>
                                        <div class="price-bottom">
                                            <span class="new-price">441.000đ</span>
                                        </div>
                                    </div>
                                    <div class="cart">
                                        <i class="fa-solid fa-cart-shopping content-details__cart-icon"></i>
                                        Thêm vào giỏ hàng
                                    </div>
                                    <div class="bottom">
                                        <div class="star"><i class="fa-solid fa-star"></i> 5</div>
                                        <button class="fav-btn"><i class="fa-solid fa-heart"></i> Yêu
                                            thích</button>
                                    </div>
                                </div>

                            </div>
                            <div class="col l-3 m-4 c-6">
                                <div class="product-card">
                                    <a><img src="assets/img/denhoc.jpg" alt=""></a>
                                    <a>
                                        <p>Đèn bàn học bóng LED chống cận bảo vệ mắt, Thân đèn</p>
                                    </a>
                                    <div class="price-discount">
                                        <div class="price-top">
                                            <span class="old-price">202.000đ</span>
                                            <div class="discount-badge">Giảm 15%</div>
                                        </div>
                                        <div class="price-bottom">
                                            <span class="new-price">171.000đ</span>
                                        </div>
                                    </div>
                                    <div class="cart">
                                        <i class="fa-solid fa-cart-shopping content-details__cart-icon"></i>
                                        Thêm vào giỏ hàng
                                    </div>
                                    <div class="bottom">
                                        <div class="star"><i class="fa-solid fa-star"></i> 4.6</div>
                                        <button class="fav-btn"><i class="fa-solid fa-heart"></i> Yêu
                                            thích</button>
                                    </div>
                                </div>

                            </div>
                            <div class="col l-3 m-4 c-6">
                                <div class="product-card">
                                    <a><img src="assets/img/candien.jpg" alt=""></a>
                                    <a>
                                        <p>Cân điện tử thông minh Xiaomi Smart Scale Gen 2</p>
                                    </a>
                                    <div class="price-discount">
                                        <div class="price-top">
                                            <span class="old-price">337.000đ</span>
                                            <div class="discount-badge">Giảm 25%</div>
                                        </div>
                                        <div class="price-bottom">
                                            <span class="new-price">252.000đ</span>
                                        </div>
                                    </div>
                                    <div class="cart">
                                        <i class="fa-solid fa-cart-shopping content-details__cart-icon"></i>
                                        Thêm vào giỏ hàng
                                    </div>
                                    <div class="bottom">
                                        <div class="star"><i class="fa-solid fa-star"></i> 4.7</div>
                                        <button class="fav-btn"><i class="fa-solid fa-heart"></i> Yêu
                                            thích</button>
                                    </div>
                                </div>
                            </div>
                            <div class="col l-3 m-4 c-6">
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
                                    <div class="cart">
                                        <i class="fa-solid fa-cart-shopping content-details__cart-icon"></i>
                                        Thêm vào giỏ hàng
                                    </div>
                                    <div class="bottom">
                                        <div class="star"><i class="fa-solid fa-star"></i> 5</div>
                                        <button class="fav-btn"><i class="fa-solid fa-heart"></i> Yêu
                                            thích</button>
                                    </div>
                                </div>
                            </div>
                            <div class="col l-3 m-4 c-6">
                                <div class="product-card">
                                    <a><img src="assets/img/loadeban.jpg" alt=""></a>
                                    <a>
                                        <p>Loa để bàn mini nhỏ gọn âm thanh vượt trội</p>
                                    </a>
                                    <span class="price">162.000đ</span>
                                    <div class="cart">
                                        <i class="fa-solid fa-cart-shopping content-details__cart-icon"></i>
                                        Thêm vào giỏ hàng
                                    </div>
                                    <div class="bottom">
                                        <div class="star"><i class="fa-solid fa-star"></i> 4.6</div>
                                        <button class="fav-btn"><i class="fa-solid fa-heart"></i> Yêu
                                            thích</button>
                                    </div>
                                </div>
                            </div>
                            <div class="col l-3 m-4 c-6">
                                <div class="product-card">
                                    <a><img src="assets/img/keogiay.jpg" alt=""></a>
                                    <a>
                                        <p>Keo dán giày dép siêu dính trong suốt chuyên dụng 100gr</p>
                                    </a>
                                    <span class="price">128.000đ</span>
                                    <div class="cart">
                                        <i class="fa-solid fa-cart-shopping content-details__cart-icon"></i>
                                        Thêm vào giỏ hàng
                                    </div>
                                    <div class="bottom">
                                        <div class="star"><i class="fa-solid fa-star"></i> 4.8</div>
                                        <button class="fav-btn"><i class="fa-solid fa-heart"></i> Yêu
                                            thích</button>
                                    </div>
                                </div>
                            </div>
                            <div class="col l-3 m-4 c-6">
                                <div class="product-card">
                                    <a><img src="assets/img/balo.jpg" alt=""></a>
                                    <a>
                                        <p>Balo đựng sách vở, laptop,...cho học sinh,sinh viên vải dù cao cấp, Màu
                                            trắng khóa xanh</p>
                                    </a>
                                    <span class="price">228.000đ</span>
                                    <div class="cart">
                                        <i class="fa-solid fa-cart-shopping content-details__cart-icon"></i>
                                        Thêm vào giỏ hàng
                                    </div>
                                    <div class="bottom">
                                        <div class="star"><i class="fa-solid fa-star"></i> 5</div>
                                        <button class="fav-btn"><i class="fa-solid fa-heart"></i> Yêu
                                            thích</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>

                </div>
            </div>
        </div>
    </div>
</main>

<!-- Footer -->
<jsp:include page="/common/footer.jsp" />
</body>
<!-- Link JS -->
<script src="assets/js/script.js"></script>
<script>
  const tab = new URLSearchParams(location.search).get("tab");
  if (tab === "orders") {
    const el = document.getElementById("orders-all");
    if (el) el.scrollIntoView({behavior:"smooth"});
  }
</script>
<!-- Ghép tỉnh + huyện + địa chỉ thành 1 chuỗi lưu vào users.address -->
<script>
  (function () {
    const f = document.getElementById("addressForm");
    if (!f) return;

    f.addEventListener("submit", function () {
      const tinh = document.getElementById("tinh");
      const huyen = document.getElementById("huyen");
      const diachi = document.getElementById("diachi");

      const tinhText = tinh && tinh.value ? tinh.options[tinh.selectedIndex].text : "";
      const huyenText = huyen && huyen.value ? huyen.options[huyen.selectedIndex].text : "";
      const soNha = diachi ? diachi.value.trim() : "";

      // full address -> lưu vào DB
      diachi.value = [soNha, huyenText, tinhText].filter(Boolean).join(", ");
    });
  })();
</script>
</html>