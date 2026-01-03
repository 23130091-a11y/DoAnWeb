<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 07/12/2025
  Time: 3:05 CH
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang admin</title>

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
    <link rel="stylesheet" href="assets/css/admin.css?v=2">
    <!-- Include stylesheet -->
    <link href="https://cdn.jsdelivr.net/npm/quill@2.0.3/dist/quill.snow.css" rel="stylesheet" />
</head>
<body>
<header class="header">
    <div class="grid wide">
        <nav class="navbar">
            <ul class="navbar__list">
                <li class="navbar__item">
                    <span class="navbar__greeting">Xin chào Admin</span>
                </li>
            </ul>

            <ul class="navbar__list">
                <li class="navbar__item">
                    <i class="navbar__icon fa-solid fa-house"></i>
                    <a href="/index.html" class="navbar__link">Trang chủ</a>
                </li>
                <li class="navbar__item">
                    <i class="navbar__icon fa-solid fa-right-from-bracket"></i>
                    <a href="#!" class="navbar__link">Đăng xuất</a>
                </li>
            </ul>
        </nav>
    </div>
</header>

<main class="main">
    <div class="manage">
        <div class="grid wide">
            <div class="row small-gutter">
                <div class="col l-2 m-0 c-0">
                    <section class="manage-nav">
                        <h2 class="manage__heading">Danh mục quản lý</h2>

                        <ul class="manage-nav__list">
                            <li class="manage-nav__item">
                                <a href="#config" class="manage-nav__link">Cấu hình</a>
                            </li>
                            <li class="manage-nav__item">
                                <a href="#news" class="manage-nav__link">Tin tức</a>
                            </li>
                            <li class="manage-nav__item">
                                <a href="#customer" class="manage-nav__link">Khách hàng</a>

                            </li>

                            <li class="manage-nav__item">
                                <a href="#product" class="manage-nav__link manage-nav__link--active">Sản phẩm</a>
                            </li>
                            <li class="manage-nav__item">
                                <a href="#order" class="manage-nav__link">Đơn hàng</a>
                            </li>
                        </ul>

                    </section>
                </div>

                <div class="col l-10 m-12 c-12">
                    <section id="config" class="manage-detail">
                        <h2 class="manage__heading">Cấu hình hệ thống Bán hàng</h2>

                        <div class="config-box">
                            <form class="config-form">

                                <h3 class="config-sub-heading">🌐 Cấu hình chung</h3>

                                <div class="config-group">
                                    <label class="config-label">Tên website</label>
                                    <input type="text" class="config-input" placeholder="Nhập tên website">
                                </div>

                                <div class="config-group">
                                    <label class="config-label">Logo website</label>
                                    <input type="file" class="config-input">
                                    <small class="config-note">Logo này cũng sẽ được dùng làm Favicon nếu không có tùy chọn riêng.</small>
                                </div>

                                <div class="config-group">
                                    <label class="config-label">Email liên hệ</label>
                                    <input type="email" class="config-input" placeholder="contact@example.com">
                                </div>

                                <div class="config-group">
                                    <label class="config-label">Số điện thoại Hotline</label>
                                    <input type="text" class="config-input" placeholder="0123 456 789">
                                </div>

                                <div class="config-group">
                                    <label class="config-label">Địa chỉ Trụ sở/Cửa hàng</label>
                                    <input type="text" class="config-input" placeholder="Địa chỉ chi tiết">
                                </div>

                                <div class="config-group">
                                    <label class="config-label">Mô tả website</label>
                                    <textarea class="config-textarea" rows="4"
                                              placeholder="Mô tả ngắn về website, hiển thị ở chân trang và giới thiệu"></textarea>
                                </div>

                                <div class="config-group">
                                    <label class="config-label">Nội dung Footer (Chân trang)</label>
                                    <textarea class="config-textarea" rows="3"
                                              placeholder="Bản quyền, thông tin công ty, liên kết nhanh..."></textarea>
                                </div>

                                <hr class="config-divider">

                                <h3 class="config-sub-heading">💰 Cấu hình Thanh toán & Vận chuyển</h3>

                                <div class="config-group">
                                    <label class="config-label">Tiền tệ mặc định</label>
                                    <select class="config-input">
                                        <option value="VND">VND (Việt Nam Đồng)</option>
                                        <option value="USD">USD (Đô la Mỹ)</option>
                                        <option value="EUR">EUR (Euro)</option>
                                    </select>
                                </div>

                                <div class="config-group config-group--checkbox">
                                    <label class="config-label">Kích hoạt thanh toán COD (Thanh toán khi nhận hàng)</label>
                                    <input type="checkbox" id="enable_cod" checked>
                                    <label for="enable_cod" class="checkbox-toggle"></label>
                                </div>

                                <div class="config-group config-group--checkbox">
                                    <label class="config-label">Kích hoạt thanh toán Online (VNPay, Momo...)</label>
                                    <input type="checkbox" id="enable_online_payment">
                                    <label for="enable_online_payment" class="checkbox-toggle"></label>
                                </div>

                                <div class="config-group">
                                    <label class="config-label">Phí vận chuyển mặc định (Đơn hàng dưới ngưỡng)</label>
                                    <input type="number" class="config-input" placeholder="Ví dụ: 30000" min="0">
                                </div>

                                <div class="config-group">
                                    <label class="config-label">Ngưỡng miễn phí vận chuyển (VNĐ)</label>
                                    <input type="number" class="config-input" placeholder="Ví dụ: 500000" min="0">
                                    <small class="config-note">Đơn hàng đạt ngưỡng này sẽ được miễn phí vận chuyển.</small>
                                </div>

                                <hr class="config-divider">

                                <h3 class="config-sub-heading">🔍 Cấu hình SEO</h3>

                                <div class="config-group">
                                    <label class="config-label">Tiêu đề SEO mặc định</label>
                                    <input type="text" class="config-input" placeholder="Tiêu đề trang chủ">
                                    <small class="config-note">Tối đa 60 ký tự.</small>
                                </div>

                                <div class="config-group">
                                    <label class="config-label">Mô tả SEO mặc định</label>
                                    <textarea class="config-textarea" rows="3"
                                              placeholder="Mô tả cho công cụ tìm kiếm"></textarea>
                                    <small class="config-note">Tối đa 160 ký tự.</small>
                                </div>

                                <div class="config-group">
                                    <label class="config-label">Mã Google Analytics/Google Tag Manager</label>
                                    <input type="text" class="config-input" placeholder="GTM-XXXXXX hoặc UA-XXXXXX">
                                    <small class="config-note">Dùng để theo dõi truy cập và hành vi người dùng.</small>
                                </div>

                                <div class="config-actions">
                                    <button type="submit" class="btn btn--default-color">
                                        Lưu tất cả cấu hình
                                    </button>
                                </div>

                            </form>
                        </div>
                    </section>
                    <section id="customer" class="manage-detail">
                        <h2 class="manage__heading">Khách hàng</h2>

                        <div class="customer-table">
                            <form class="news-search" method="get"
                                  action="${pageContext.request.contextPath}/admin/customers">
                                <input type="text" name="q"
                                       value="${q}"
                                       placeholder="Tìm kiếm (tên/email/sđt)..."
                                       class="news-search__input">
                            </form>


                            <!-- Bảng khách hàng -->
                            <div class="customer-table__inner">

                                <!-- Hàng tiêu đề -->
                                <div class="customer-table__row">
                                    <div class="customer-table__cell">Avatar</div>
                                    <div class="customer-table__cell">Tên</div>
                                    <div class="customer-table__cell">Email</div>
                                    <div class="customer-table__cell">Địa chỉ</div>
                                    <div class="customer-table__cell">Xem</div>
                                    <div class="customer-table__cell">Sửa</div>
                                    <div class="customer-table__cell">Xóa</div>
                                </div>

                                <!-- Một khách hàng -->
                                <c:choose>
                                    <c:when test="${empty users}">
                                        <article class="customer-table__row">
                                            <div class="customer-table__cell" style="grid-column: 1 / -1;">
                                                <span class="customer-table__text">Không có khách hàng.</span>
                                            </div>
                                        </article>
                                    </c:when>
                                    <c:otherwise>
                                        <c:forEach var="u" items="${users}">
                                            <article class="customer-table__row ${u.status == 0 ? 'is-locked' : ''}">
                                                <div class="customer-table__cell">
                                                    <c:choose>
                                                        <c:when test="${empty u.avatar}">
                                                            <img src="assets/img/avatar-default.png" class="customer-table__img" alt="">
                                                        </c:when>
                                                        <c:otherwise>
                                                            <img src="<c:out value='${u.avatar}'/>" class="customer-table__img" alt="">
                                                        </c:otherwise>
                                                    </c:choose>
                                                </div>

                                                <div class="customer-table__cell">
                                                    <span class="customer-table__text"><c:out value="${u.name}"/></span>
                                                </div>

                                                <div class="customer-table__cell">
                                                    <span class="customer-table__text"><c:out value="${u.email}"/></span>
                                                </div>

                                                <div class="customer-table__cell">
                                                    <span class="customer-table__text"><c:out value="${empty u.address ? '-' : u.address}"/></span>
                                                </div>

                                                <div class="customer-table__cell">
                                                    <button type="button"
                                                            class="customer-table__view"
                                                            data-id="${u.id}"
                                                            data-name="${fn:escapeXml(u.name)}"
                                                            data-email="${fn:escapeXml(u.email)}"
                                                            data-phone="${fn:escapeXml(u.phone)}"
                                                            data-address="${fn:escapeXml(u.address)}"
                                                            data-avatar="${fn:escapeXml(u.avatar)}"
                                                            data-role="${u.role}"
                                                            data-status="${u.status}">
                                                        Xem
                                                    </button>
                                                </div>

                                                <div class="customer-table__cell">
                                                    <button type="button"
                                                            class="customer-table__edit"
                                                            data-id="${u.id}"
                                                            data-name="${fn:escapeXml(u.name)}"
                                                            data-email="${fn:escapeXml(u.email)}"
                                                            data-phone="${fn:escapeXml(u.phone)}"
                                                            data-address="${fn:escapeXml(u.address)}"
                                                            data-avatar="${fn:escapeXml(u.avatar)}"
                                                            data-role="${u.role}"
                                                            data-status="${u.status}">
                                                        Sửa
                                                    </button>
                                                </div>

                                                <div class="customer-table__cell">
                                                    <form method="post"
                                                          action="${pageContext.request.contextPath}/admin/customers/lock"
                                                          onsubmit="return confirm('Khóa/Xóa khách hàng này? (status sẽ chuyển về 0)');">
                                                        <input type="hidden" name="id" value="${u.id}">
                                                        <button type="submit" class="customer-table__delete">Xóa</button>
                                                    </form>
                                                </div>
                                            </article>
                                        </c:forEach>
                                    </c:otherwise>
                                </c:choose>


                            </div>
                        </div>
                    </section>
                    <!-- Chi tiết khách hàng -->
                    <section id="customer-detail" class="customer-detail hidden">
                        <h2 class="manage__heading">Chi tiết khách hàng</h2>

                        <div class="customer-detail__card">
                            <!-- Avatar -->
                            <div class="customer-detail__avatar">
                                <img id="customerDetailAvatar" src="assets/img/avatar-default.png" alt="Avatar">
                                <span id="customerDetailStatus" class="customer-detail__status online">Hoạt động</span>

                            </div>

                            <!-- Thông tin -->
                            <div class="customer-detail__info">
                                <div class="customer-detail__row">
                                    <span class="label">Tên:</span>
                                    <span class="value" id="customerDetailName"></span>

                                </div>

                                <div class="customer-detail__row">
                                    <span class="label">Email:</span>
                                    <span class="value" id="customerDetailEmail"></span>

                                </div>


                                <div class="customer-detail__row">
                                    <span class="label">Số điện thoại:</span>
                                    <span class="value" id="customerDetailPhone"></span>

                                </div>

                                <div class="customer-detail__row">
                                    <span class="label">Địa chỉ:</span>
                                    <span class="value" id="customerDetailAddress"></span>

                                </div>

                                <div class="customer-detail__row">
                                    <span class="label">Ngày tạo:</span>
                                    <span class="value">X/X/X</span>
                                </div>

                                <div class="customer-detail__row">
                                    <span class="label">Ngày cập nhật:</span>
                                    <span class="value">X/X/x</span>
                                </div>
                            </div>
                        </div>

                        <!-- Nút đóng -->
                        <div class="customer-detail__actions">
                            <button class="btn btn--default-color" onclick="hideCustomerDetail()">
                                Đóng
                            </button>
                        </div>
                    </section>
                    <!-- Sửa khách hàng -->
                    <section id="customer-edit" class="customer-detail hidden">
                        <h2 class="manage__heading">Sửa thông tin khách hàng</h2>

                        <div class="customer-detail__card">
                            <!-- Avatar -->
                            <div class="customer-detail__avatar">
                                <img src="assets/img/avatar4.jpg" alt="Avatar">
                                <span class="customer-detail__status online">Đang hoạt động</span>
                            </div>

                            <!-- Form thông tin -->
                            <form class="customer-detail__info"
                                  id="customerEditForm"
                                  method="post"
                                  action="${pageContext.request.contextPath}/admin/customers/update">
                                <input type="hidden" name="id" id="editId">


                                <div class="customer-detail__row">
                                    <label class="label">Tên:</label>
                                    <input type="text" class="input" name="name" id="editName" required>

                                </div>

                                <div class="customer-detail__row">
                                    <label class="label">Email:</label>
                                    <input type="email" class="input" name="email" id="editEmail" required>

                                </div>

                                <div class="customer-detail__row">
                                    <label class="label">Password:</label>
                                    <input type="password" class="input" name="password" id="editPassword" placeholder="Bỏ trống nếu không đổi">

                                </div>

                                <div class="customer-detail__row">
                                    <label class="label">Số điện thoại:</label>
                                    <input type="text" class="input" name="phone" id="editPhone">

                                </div>

                                <div class="customer-detail__row">
                                    <label class="label">Địa chỉ:</label>
                                    <input type="text" class="input" name="address" id="editAddress">

                                </div>

                                <div class="customer-detail__row">
                                    <label class="label">Ngày tạo:</label>
                                    <input type="text" class="input" value="01/12/2025" disabled>
                                </div>

                                <div class="customer-detail__row">
                                    <label class="label">Ngày cập nhật:</label>
                                    <input type="text" class="input" value="10/12/2025" disabled>
                                </div>

                                <!-- Action -->
                                <div class="customer-detail__actions">
                                    <button type="submit" class="btn btn--default-color">
                                        Lưu thay đổi
                                    </button>

                                    <button type="button"
                                            class="btn btn--default-color"
                                            onclick="hideCustomerEdit()">
                                        Hủy
                                    </button>
                                </div>
                            </form>
                        </div>
                    </section>
                    <section id="news" class="manage-detail">
                        <h2 class="manage__heading">Danh mục tin tức</h2>

                        <!-- Menu danh mục -->
                        <div class="news-menu">
                            <button class="news-menu__btn active" data-target="news-slide">Slide quảng cáo</button>
                            <button class="news-menu__btn" data-target="news-blog">Blog tin tức</button>
                        </div>

                        <!-- Slide quảng cáo -->
                        <div class="news-table" id="news-slide">
                            <!-- Tìm kiếm -->
                            <div class="news-search">
                                <input type="text" placeholder="Tìm kiếm slide..." class="news-search__input" id="searchSlide">
                            </div>
                            <div class="add-table__header">
                                <button class="btn btn--default-color add-table__btn">Thêm Slide</button>
                            </div>

                            <div class="news-table__inner">
                                <!-- Header -->
                                <div class="news-table__row news-table__row--header">
                                    <div class="news-table__cell">Ảnh</div>
                                    <div class="news-table__cell">Tên slide</div>
                                    <div class="news-table__cell">Trạng thái</div>
                                    <div class="news-table__cell">Ngày tạo</div>
                                    <div class="news-table__cell">Ngày cập nhật</div>
                                    <div class="news-table__cell">Post</div>
                                    <div class="news-table__cell">Xem</div>
                                    <div class="news-table__cell">Sửa</div>
                                    <div class="news-table__cell">Xóa</div>
                                </div>

                                <!-- Dữ liệu mẫu -->
                                <article class="news-table__row">
                                    <div class="news-table__cell"><img src="assets/img/hero_slide-01.jpg" class="news-table__img" alt=""></div>
                                    <div class="news-table__cell">Slide khuyến mãi 12.12</div>
                                    <div class="news-table__cell"><span class="status status--active">Đang post</span></div>
                                    <div class="news-table__cell">01/12/2025</div>
                                    <div class="news-table__cell">10/12/2025</div>
                                    <div class="news-table__cell"><input type="checkbox" checked></div>
                                    <div class="news-table__cell"><button class="news-table__view">Xem</button></div>
                                    <div class="news-table__cell"><button class="news-table__edit">Sửa</button></div>
                                    <div class="news-table__cell"><button class="news-table__delete">Xóa</button></div>
                                </article>

                                <article class="news-table__row">
                                    <div class="news-table__cell"><img src="assets/img/hero_slide-02.jpg" class="news-table__img" alt=""></div>
                                    <div class="news-table__cell">Slide Black Friday</div>
                                    <div class="news-table__cell"><span class="status status--inactive">Chưa post</span></div>
                                    <div class="news-table__cell">15/11/2025</div>
                                    <div class="news-table__cell">20/11/2025</div>
                                    <div class="news-table__cell"><input type="checkbox"></div>
                                    <div class="news-table__cell"><button class="news-table__view">Xem</button></div>
                                    <div class="news-table__cell"><button class="news-table__edit">Sửa</button></div>
                                    <div class="news-table__cell"><button class="news-table__delete">Xóa</button></div>
                                </article>
                            </div>
                        </div>

                        <!-- Blog tin tức -->
                        <div class="news-table hidden" id="news-blog">
                            <!-- Tìm kiếm -->
                            <div class="news-search">
                                <input type="text" placeholder="Tìm kiếm blog..." class="news-search__input" id="searchBlog">
                            </div>
                            <div class="add-table__header">
                                <button class="btn btn--default-color add-table__btn">Thêm Blog</button>
                            </div>

                            <div class="news-table__inner">
                                <!-- Header -->
                                <div class="news-table__row news-table__row--header">
                                    <div class="news-table__cell">Ảnh</div>
                                    <div class="news-table__cell">Tiêu đề</div>
                                    <div class="news-table__cell">Trạng thái</div>
                                    <div class="news-table__cell">Ngày tạo</div>
                                    <div class="news-table__cell">Ngày cập nhật</div>
                                    <div class="news-table__cell">Post</div>
                                    <div class="news-table__cell">Xem</div>
                                    <div class="news-table__cell">Sửa</div>
                                    <div class="news-table__cell">Xóa</div>
                                </div>

                                <!-- Dữ liệu mẫu -->
                                <article class="news-table__row">
                                    <div class="news-table__cell"><img src="assets/img/blog1.jpg" class="news-table__img" alt=""></div>
                                    <div class="news-table__cell">Ra mắt sản phẩm mới 2025</div>
                                    <div class="news-table__cell"><span class="status status--active">Đang post</span></div>
                                    <div class="news-table__cell">05/12/2025</div>
                                    <div class="news-table__cell">10/12/2025</div>
                                    <div class="news-table__cell"><input type="checkbox" checked></div>
                                    <div class="news-table__cell"><button class="news-table__view">Xem</button></div>
                                    <div class="news-table__cell"><button class="news-table__edit">Sửa</button></div>
                                    <div class="news-table__cell"><button class="news-table__delete">Xóa</button></div>
                                </article>

                                <article class="news-table__row">
                                    <div class="news-table__cell"><img src="assets/img/blog2.jpg" class="news-table__img" alt=""></div>
                                    <div class="news-table__cell">Cập nhật chương trình ưu đãi</div>
                                    <div class="news-table__cell"><span class="status status--inactive">Chưa post</span></div>
                                    <div class="news-table__cell">20/11/2025</div>
                                    <div class="news-table__cell">25/11/2025</div>
                                    <div class="news-table__cell"><input type="checkbox"></div>
                                    <div class="news-table__cell"><button class="news-table__view">Xem</button></div>
                                    <div class="news-table__cell"><button class="news-table__edit">Sửa</button></div>
                                    <div class="news-table__cell"><button class="news-table__delete">Xóa</button></div>
                                </article>
                            </div>
                        </div>
                    </section>
                    <!-- Chi tiết Slide -->
                    <section id="slide-detail" class="slide-detail hidden">
                        <h2 class="manage__heading">Chi tiết Slide</h2>

                        <div class="slide-detail__card">
                            <!-- Hình Slide -->
                            <div class="slide-detail__image">
                                <img src="assets/img/hero_slide-01.jpg" alt="Slide Image">
                                <span class="slide-detail__status active">Đang post</span>
                            </div>

                            <!-- Thông tin Slide -->
                            <div class="slide-detail__info">
                                <div class="slide-detail__row">
                                    <span class="label">Tên slide:</span>
                                    <span class="value">Slide khuyến mãi 12.12</span>
                                </div>
                                <div class="slide-detail__row">
                                    <span class="label">Trạng thái:</span>
                                    <span class="value">Đang post</span>
                                </div>
                                <div class="slide-detail__row">
                                    <span class="label">Ngày tạo:</span>
                                    <span class="value">01/12/2025</span>
                                </div>
                                <div class="slide-detail__row">
                                    <span class="label">Ngày cập nhật:</span>
                                    <span class="value">10/12/2025</span>
                                </div>
                                <div class="slide-detail__row">
                                    <span class="label">Post:</span>
                                    <span class="value"><input type="checkbox" checked></span>
                                </div>
                            </div>
                        </div>

                        <!-- Nút đóng -->
                        <div class="slide-detail__actions">
                            <button class="btn btn--default-color" onclick="hideSlideDetail()">Đóng</button>
                        </div>
                    </section>

                    <!-- Chi tiết Blog -->
                    <section id="blog-detail" class="blog-detail hidden">
                        <h2 class="manage__heading">Chi tiết Blog</h2>

                        <div class="blog-detail__card">
                            <!-- Hình Blog -->
                            <div class="blog-detail__image">
                                <img src="assets/img/blog1.jpg" alt="Blog Image">
                                <span class="blog-detail__status active">Đang post</span>
                            </div>

                            <!-- Thông tin Blog -->
                            <div class="blog-detail__info">
                                <div class="blog-detail__row">
                                    <span class="label">Tiêu đề:</span>
                                    <span class="value">Ra mắt sản phẩm mới 2025</span>
                                </div>
                                <div class="blog-detail__row">
                                    <span class="label">Trạng thái:</span>
                                    <span class="value">Đang post</span>
                                </div>
                                <div class="blog-detail__row">
                                    <span class="label">Ngày tạo:</span>
                                    <span class="value">05/12/2025</span>
                                </div>
                                <div class="blog-detail__row">
                                    <span class="label">Ngày cập nhật:</span>
                                    <span class="value">10/12/2025</span>
                                </div>
                                <div class="blog-detail__row">
                                    <span class="label">Post:</span>
                                    <span class="value"><input type="checkbox" checked></span>
                                </div>
                            </div>
                        </div>

                        <!-- Nút đóng -->
                        <div class="blog-detail__actions">
                            <button class="btn btn--default-color" onclick="hideBlogDetail()">Đóng</button>
                        </div>
                    </section>
                    <!-- Sửa Slide -->
                    <section id="slide-edit" class="slide-detail hidden">
                        <h2 class="manage__heading">Sửa Slide</h2>

                        <div class="slide-detail__card">
                            <!-- Hình Slide -->
                            <div class="slide-detail__image">
                                <img src="assets/img/slide1.jpg" alt="Slide Image">
                                <span class="slide-detail__status active">Đang post</span>
                            </div>

                            <!-- Form thông tin -->
                            <form class="slide-detail__info" id="slideEditForm">
                                <div class="slide-detail__row">
                                    <label class="label">Tên slide:</label>
                                    <input type="text" class="input" value="Slide khuyến mãi 12.12">
                                </div>

                                <div class="slide-detail__row">
                                    <label class="label">Trạng thái:</label>
                                    <select class="input">
                                        <option value="active" selected>Đang post</option>
                                        <option value="inactive">Chưa post</option>
                                    </select>
                                </div>

                                <div class="slide-detail__row">
                                    <label class="label">Ngày tạo:</label>
                                    <input type="text" class="input" value="01/12/2025" disabled>
                                </div>

                                <div class="slide-detail__row">
                                    <label class="label">Ngày cập nhật:</label>
                                    <input type="text" class="input" value="10/12/2025" disabled>
                                </div>

                                <div class="slide-detail__row">
                                    <label class="label">Hình ảnh mới:</label>
                                    <input type="file" class="input">
                                </div>

                                <!-- Action -->
                                <div class="slide-detail__actions">
                                    <button type="submit" class="btn btn--default-color">Lưu thay đổi</button>
                                    <button type="button" class="btn btn--default-color" onclick="hideSlideEdit()">Hủy</button>
                                </div>
                            </form>
                        </div>
                    </section>

                    <!-- Sửa Blog -->
                    <section id="blog-edit" class="blog-detail hidden">
                        <h2 class="manage__heading">Sửa Blog</h2>

                        <div class="blog-detail__card">
                            <!-- Hình Blog -->
                            <div class="blog-detail__image">
                                <img src="assets/img/blog1.jpg" alt="Blog Image">
                                <span class="blog-detail__status active">Đang post</span>
                            </div>

                            <!-- Form thông tin -->
                            <form class="blog-detail__info" id="blogEditForm">
                                <div class="blog-detail__row">
                                    <label class="label">Tiêu đề:</label>
                                    <input type="text" class="input" value="Ra mắt sản phẩm mới 2025">
                                </div>

                                <div class="blog-detail__row">
                                    <label class="label">Trạng thái:</label>
                                    <select class="input">
                                        <option value="active" selected>Đang post</option>
                                        <option value="inactive">Chưa post</option>
                                    </select>
                                </div>

                                <div class="blog-detail__row">
                                    <label class="label">Ngày tạo:</label>
                                    <input type="text" class="input" value="05/12/2025" disabled>
                                </div>

                                <div class="blog-detail__row">
                                    <label class="label">Ngày cập nhật:</label>
                                    <input type="text" class="input" value="10/12/2025" disabled>
                                </div>

                                <div class="blog-detail__row">
                                    <label class="label">Hình ảnh mới:</label>
                                    <input type="file" class="input">
                                </div>

                                <!-- Action -->
                                <div class="blog-detail__actions">
                                    <button type="submit" class="btn btn--default-color ">Lưu thay đổi</button>
                                    <button type="button" class="btn btn--default-color" onclick="hideBlogEdit()">Hủy</button>
                                </div>
                            </form>
                        </div>
                    </section>
                    <!-- ================= THÊM SLIDE ================= -->
                    <section id="add-slide" class="manage-detail" style="display:none;">
                        <h2 class="manage__heading">Thêm slide</h2>

                        <div class="slide-table">
                            <div class="slide-table__header">
                                <button type="submit" form="addSlideForm" class="slide-table__save">
                                    <i class="fa-solid fa-floppy-disk"></i>
                                </button>
                            </div>

                            <div class="slide-table__inner">
                                <form id="addSlideForm" class="add-slide-form">

                                    <!-- Tên slide -->
                                    <div class="add-slide-form__field">
                                        <label class="add-slide-form__label">Tên slide:</label>
                                        <input type="text" class="add-slide-form__input" required>
                                    </div>

                                    <!-- Trạng thái -->
                                    <div class="add-slide-form__field">
                                        <label class="add-slide-form__label">Trạng thái:</label>
                                        <select class="add-slide-form__input">
                                            <option value="active">Đang post</option>
                                            <option value="inactive">Chưa post</option>
                                        </select>
                                    </div>

                                    <!-- Ảnh slide -->
                                    <div class="add-slide-form__field">
                                        <label class="add-slide-form__label">Ảnh slide:</label>
                                        <input type="file" class="add-slide-form__input" accept="image/*" required>
                                    </div>

                                    <button type="button"
                                            class="btn btn--default-color product-table__back-btn"
                                            onclick="hideSlideAdd()">
                                        Quay lại
                                    </button>

                                </form>
                            </div>
                        </div>
                    </section>
                    <!-- ================= THÊM BLOG ================= -->
                    <section id="add-blog" class="manage-detail" style="display:none;">
                        <h2 class="manage__heading">Thêm blog</h2>

                        <div class="blog-table">
                            <div class="blog-table__header">
                                <button type="submit" form="addBlogForm" class="blog-table__save">
                                    <i class="fa-solid fa-floppy-disk"></i>
                                </button>
                            </div>

                            <div class="blog-table__inner">
                                <form id="addBlogForm" class="add-blog-form">

                                    <!-- Tiêu đề -->
                                    <div class="add-blog-form__field">
                                        <label class="add-blog-form__label">Tiêu đề:</label>
                                        <input type="text" class="add-blog-form__input" required>
                                    </div>

                                    <!-- Trạng thái -->
                                    <div class="add-blog-form__field">
                                        <label class="add-blog-form__label">Trạng thái:</label>
                                        <select class="add-blog-form__input">
                                            <option value="active">Đang post</option>
                                            <option value="inactive">Chưa post</option>
                                        </select>
                                    </div>

                                    <!-- Ảnh đại diện -->
                                    <div class="add-blog-form__field">
                                        <label class="add-blog-form__label">Ảnh đại diện:</label>
                                        <input type="file" class="add-blog-form__input" accept="image/*">
                                    </div>

                                    <!-- Nội dung -->
                                    <div class="add-blog-form__field">
                                        <label class="add-blog-form__label">Nội dung:</label>
                                        <div id="blogEditor" class="add-blog-form__editor"></div>
                                    </div>

                                    <button type="button"
                                            class="btn btn--default-color product-table__back-btn"
                                            onclick="hideBlogAdd()">
                                        Quay lại
                                    </button>

                                </form>
                            </div>
                        </div>
                    </section>

                    <section id="product" class="manage-detail" style="display: none;">
                        <h2 class="manage__heading">Sản phẩm</h2>
                        <div class="product-menu">
                            <button class="product-menu__btn active" data-target="product-list">Danh mục sản phẩm</button>
                            <button class="product-menu__btn" data-target="product-event">Sự kiện giảm giá</button>
                        </div>
                            <div class="product-layout">
                            <aside class="product-sidebar">
                                <h3 class="product-sidebar__heading">Danh mục</h3>
                                <ul class="product-sidebar__list">
                                    <li class="product-sidebar__item product-sidebar__item--active">
                                        <a href="#!" class="product-sidebar__link">Gia dụng - Nhà cửa</a>
                                        <ul class="product-sub">
                                            <li class="product-sub__item">
                                                <a href="#!" class="product-sub__link active">Đồ dùng nhà bếp</a>
                                            </li>
                                            <li class="product-sub__item">
                                                <a href="#!" class="product-sub__link">Dụng cụ làm vườn</a>
                                            </li>
                                            <li class="product-sub__item">
                                                <a href="#!" class="product-sub__link">Vệ sinh nhà cửa</a>
                                            </li>
                                        </ul>
                                    </li>

                                    <li class="product-sidebar__item">
                                        <a href="#!" class="product-sidebar__link">Phụ kiện ô tô</a>
                                        <ul class="product-sub">
                                            <li class="product-sub__item"><a href="#!" class="product-sub__link">Bảng số điện thoại trên ô tô</a></li>
                                            <li class="product-sub__item"><a href="#!" class="product-sub__link">Túi đựng đồ, thùng đựng đồ ô tô</a></li>
                                            <li class="product-sub__item"><a href="#!" class="product-sub__link">Bạt che nắng, tấm chắn nắng ô tô</a></li>
                                        </ul>
                                    </li>
                                    <li class="product-sidebar__item">
                                        <a href="#!" class="product-sidebar__link">Thời trang</a>
                                        <ul class="product-sub">
                                            <li class="product-sub__item"><a href="#!" class="product-sub__link">Thời trang nam</a></li>
                                            <li class="product-sub__item"><a href="#!" class="product-sub__link">Thời trang nữ</a></li>
                                            <li class="product-sub__item"><a href="#!" class="product-sub__link">Phụ kiện thời trang</a></li>
                                        </ul>
                                    </li>
                                    <li class="product-sidebar__item">
                                        <a href="#!" class="product-sidebar__link">Âm thanh - Camera</a>
                                        <ul class="product-sub">
                                            <li class="product-sub__item"><a href="#!" class="product-sub__link">Camera, Máy ảnh</a></li>
                                            <li class="product-sub__item"><a href="#!" class="product-sub__link">Tai nghe</a></li>
                                            <li class="product-sub__item"><a href="#!" class="product-sub__link">Loa - Phụ kiện loa</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </aside>

                            <div class="product-main-content">
                                <div id="product-list-section">
                                <div class="product-table">
                                    <div class="product-table__header">
                                        <button class="btn btn--default-color product-table__btn">Thêm sản phẩm</button>
                                    </div>

                                    <!-- Bảng sản phẩm -->
                                    <div class="product-table__inner">

                                        <!-- Hàng tiêu đề -->
                                        <div class="product-table__row">
                                            <div class="product-table__cell">Ảnh</div>
                                            <div class="product-table__cell">Tên sản phẩm</div>
                                            <div class="product-table__cell">Post</div>
                                            <div class="product-table__cell">Giá</div>
                                            <div class="product-table__cell">Xem</div>
                                            <div class="product-table__cell">Sửa</div>
                                            <div class="product-table__cell">Xóa</div>
                                        </div>

                                        <!-- Một sản phẩm -->
                                        <article class="product-table__row">
                                            <div class="product-table__cell">
                                                <img src="assets/img/binhxit.png" alt="" class="product-table__img">
                                            </div>
                                            <div class="product-table__cell">
                                                <span class="product-table__text">Sản phẩm ABC</span>
                                            </div>
                                            <div class="product-table__cell">
                                                <input type="checkbox" class="product-table__checkbox" checked>
                                            </div>
                                            <div class="product-table__cell">
                                                <span class="product-table__text">500.000đ</span>
                                            </div>
                                            <div class="product-table__cell">
                                                <button class="product-table__view">Xem</button>
                                            </div>
                                            <div class="product-table__cell">
                                                <button class="product-table__edit">Sửa</button>
                                            </div>
                                            <div class="product-table__cell">
                                                <button class="product-table__delete">Xóa</button>
                                            </div>
                                        </article>

                                        <!-- Một sản phẩm -->
                                        <article class="product-table__row">
                                            <div class="product-table__cell">
                                                <img src="assets/img/binhxit.png" alt="" class="product-table__img">
                                            </div>
                                            <div class="product-table__cell">
                                                <span class="product-table__text">Sản phẩm ABC</span>
                                            </div>
                                            <div class="product-table__cell">
                                                <input type="checkbox" class="product-table__checkbox" checked>
                                            </div>
                                            <div class="product-table__cell">
                                                <span class="product-table__text">500.000đ</span>
                                            </div>
                                            <div class="product-table__cell">
                                                <button class="product-table__view">Xem</button>
                                            </div>
                                            <div class="product-table__cell">
                                                <button class="product-table__edit">Sửa</button>
                                            </div>
                                            <div class="product-table__cell">
                                                <button class="product-table__delete">Xóa</button>
                                            </div>
                                        </article>


                                    </div>
                                </div>
                                </div>
                            </div>
                        </div>
                        <div id="product-event-section" style="display: none;">
                            <div class="event-manager">
                                <div class="event-header">
                                    <button class="btn btn--default-color event-header__btn">Thêm sự kiện giảm giá</button>
                                </div>
                                <div class="event-search">
                                    <div class="event-search__wrapper">
                                        <input type="text" class="event-search__input" placeholder="Tìm kiếm tên sự kiện hoặc mức giảm giá...">
                                        <button class="event-search__btn">
                                            <i class="fas fa-search"></i> Tìm kiếm
                                        </button>
                                    </div>
                                </div>
                                <div class="event-table">
                                    <div class="event-table__row event-table__row--header">
                                        <div class="event-table__cell event-col-name">Tên sự kiện</div>
                                        <div class="event-table__cell event-col-discount">Giảm giá</div>
                                        <div class="event-table__cell event-col-date">Ngày bắt đầu</div>
                                        <div class="event-table__cell event-col-date">Ngày kết thúc</div>
                                        <div class="event-table__cell event-col-action">Xem</div>
                                        <div class="event-table__cell event-col-action">Sửa</div>
                                        <div class="event-table__cell event-col-action">Xóa</div>
                                    </div>

                                    <article class="event-table__row">
                                        <div class="event-table__cell event-col-name">
                                            <span class="event-table__text event-table__text--bold">Chương trình Sale Hè 2026</span>
                                        </div>
                                        <div class="event-table__cell event-col-discount">
                                            <span class="event-table__text event-table__text--red">-25%</span>
                                        </div>
                                        <div class="event-table__cell event-col-date">
                                            <span class="event-table__text">15/06/2026</span>
                                        </div>
                                        <div class="event-table__cell event-col-date">
                                            <span class="event-table__text">30/06/2026</span>
                                        </div>
                                        <div class="event-table__cell event-col-action">
                                            <button class="event-btn-view">Xem</button>
                                        </div>
                                        <div class="event-table__cell event-col-action">
                                            <button class="event-btn-edit">Sửa</button>
                                        </div>
                                        <div class="event-table__cell event-col-action">
                                            <button class="event-btn-delete">Xóa</button>
                                        </div>
                                    </article>

                                    <article class="event-table__row">
                                        <div class="event-table__cell event-col-name">
                                            <span class="event-table__text event-table__text--bold">Đồng giá khai trương</span>
                                        </div>
                                        <div class="event-table__cell event-col-discount">
                                            <span class="event-table__text event-table__text--red">99.000đ</span>
                                        </div>
                                        <div class="event-table__cell event-col-date">
                                            <span class="event-table__text">01/01/2026</span>
                                        </div>
                                        <div class="event-table__cell event-col-date">
                                            <span class="event-table__text">05/01/2026</span>
                                        </div>
                                        <div class="event-table__cell event-col-action">
                                            <button class="event-btn-view">Xem</button>
                                        </div>
                                        <div class="event-table__cell event-col-action">
                                            <button class="event-btn-edit">Sửa</button>
                                        </div>
                                        <div class="event-table__cell event-col-action">
                                            <button class="event-btn-delete">Xóa</button>
                                        </div>
                                    </article>

                                </div>
                            </div>
                        </div>
                    </section>
                    <section id="add-event-page" class="manage-detail" style="display: none;">
                        <h2 class="manage__heading">Thêm sự kiện giảm giá mới</h2>

                        <div class="event-card">
                            <div class="event-card__header">
                                <button type="submit" form="addEventForm" class="event-btn event-btn--save">
                                    <i class="fa-solid fa-floppy-disk"></i> Lưu sự kiện
                                </button>
                            </div>

                            <div class="event-card__body">
                                <form id="addEventForm" class="event-form">
                                    <div class="event-form__group">
                                        <label class="event-form__label">Tên sự kiện:</label>
                                        <input type="text" name="eventName" class="event-form__input" placeholder="Ví dụ: Sale Hè Rực Rỡ" required>
                                    </div>

                                    <div class="event-form__row">
                                        <div class="event-form__group">
                                            <label class="event-form__label">Loại giảm giá:</label>
                                            <select name="discountType" id="discountType" class="event-form__input">
                                                <option value="percentage">Giảm theo phần trăm (%)</option>
                                                <option value="amount">Giảm theo số tiền (đ)</option>
                                            </select>
                                        </div>
                                        <div class="event-form__group">
                                            <label class="event-form__label">Mức giảm:</label>
                                            <div class="event-form__input-wrapper">
                                                <input type="number" name="discountValue" class="event-form__input" placeholder="0" required>
                                                <span id="discountUnit" class="event-form__unit">%</span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="event-form__row">
                                        <div class="event-form__group">
                                            <label class="event-form__label">Ngày bắt đầu:</label>
                                            <input type="date" name="startDate" class="event-form__input" required>
                                        </div>
                                        <div class="event-form__group">
                                            <label class="event-form__label">Ngày kết thúc:</label>
                                            <input type="date" name="endDate" class="event-form__input" required>
                                        </div>
                                    </div>

                                    <div class="event-form__group">
                                        <label class="event-form__label">Mô tả sự kiện:</label>
                                        <textarea name="eventDesc" class="event-form__input event-form__input--textarea" rows="3" placeholder="Mô tả ngắn gọn chương trình..."></textarea>
                                    </div>

                                    <div class="event-form__group">
                                        <label class="event-form__label">Chọn Slide cho sự kiện:</label>
                                        <div class="event-select" id="eventSlideSelect">
                                            <div class="event-select__selected">-- Không hiển thị lên Slide --</div>
                                            <div class="event-select__options">
                                                <div class="event-option" data-value="none">
                                                    <span>Không hiển thị lên Slide</span>
                                                </div>
                                                <div class="event-option" data-value="home-main">
                                                    <img src="assets/img/slide-main-thumb.png" alt="" class="event-option__img">
                                                    <div class="event-option__content">
                                                        <strong class="event-option__title">Slide chính</strong>
                                                        <span class="event-option__desc">- Banner lớn trang chủ (1200x400)</span>
                                                    </div>
                                                </div>
                                                <div class="event-option" data-value="home-sub">
                                                    <img src="assets/img/slide-sub-thumb.png" alt="" class="event-option__img">
                                                    <div class="event-option__content">
                                                        <strong class="event-option__title">Banner phụ</strong>
                                                        <span class="event-option__desc">- Banner nhỏ bên phải (400x200)</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <input type="hidden" name="eventSlideTarget" id="eventSlideTargetHidden" value="none">
                                    </div>
                                    <label class="event-form__label">Phạm vi áp dụng giảm giá:</label>
                                    <div class="event-form__apply-type">

                                        <div class="event-form__apply-row">
                                            <label class="event-radio">
                                                <input type="radio" name="applyScope" value="all" checked>
                                                <span>Tất cả sản phẩm</span>
                                            </label>
                                        </div>

                                        <div class="event-form__apply-row">
                                            <label class="event-radio">
                                                <input type="radio" name="applyScope" value="category">
                                                <span>Theo danh mục</span>
                                            </label>

                                            <div id="scopeCategory" class="event-scope-box" style="display: none;">
                                                <div class="category-select-wrapper">
                                                    <select name="applyCategories" class="event-form__input">
                                                        <option value="">-- Chọn một danh mục --</option>
                                                        <option value="1">Gia dụng - Nhà cửa</option>
                                                        <option value="2">Phụ kiện ô tô</option>
                                                        <option value="3">Thời trang</option>
                                                        <option value="4">Âm thanh - Camera</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="event-form__apply-row">
                                            <label class="event-radio">
                                                <input type="radio" name="applyScope" value="specific">
                                                <span>Sản phẩm cụ thể</span>
                                            </label>

                                            <div id="scopeSpecific" class="event-scope-box" style="display: none;">
                                                <div class="event-search-mini">
                                                    <div class="event-search-wrapper">
                                                        <input type="text" id="productSearchEvent" class="event-form__input" placeholder="Nhập tên sản phẩm để lọc...">
                                                        <button type="button" class="event-search-btn"><i class="fas fa-search"></i></button>
                                                    </div>
                                                </div>

                                                <div class="event-product-select">
                                                    <div class="event-product-table">
                                                        <div class="event-product-table__header">
                                                            <div class="col-check">Chọn</div>
                                                            <div class="col-img">Ảnh</div>
                                                            <div class="col-name">Tên sản phẩm</div>
                                                            <div class="col-price">Giá</div>
                                                            <div class="col-cat">Danh mục</div>
                                                        </div>
                                                        <div class="event-product-table__body" id="eventProductList">
                                                            <div class="event-product-item">
                                                                <div class="col-check"><input type="checkbox" name="selectedProducts[]" value="101"></div>
                                                                <div class="col-img"><img src="assets/img/binhxit.png" alt=""></div>
                                                                <div class="col-name">Bình xịt bọt tuyết siêu sạch</div>
                                                                <div class="col-price">150.000đ</div>
                                                                <div class="col-cat">Gia dụng</div>
                                                            </div>
                                                            <div class="event-product-item">
                                                                <div class="col-check"><input type="checkbox" name="selectedProducts[]" value="102"></div>
                                                                <div class="col-img"><img src="assets/img/camera.png" alt=""></div>
                                                                <div class="col-name">Camera hành trình 4K</div>
                                                                <div class="col-price">1.200.000đ</div>
                                                                <div class="col-cat">Phụ kiện ô tô</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>

                            <div class="event-card__footer">
                                <button type="button" class="bton btn--primary event-btn--cancel" onclick="backToEventList()">Hủy bỏ</button>
                            </div>
                        </div>
                    </section>

                    <section id="view-event-page" class="ev-container" style="display: none;">
                        <div class="ev-header">
                            <h2 class="ev-title">Chi tiết chương trình</h2>
                        </div>

                        <div class="ev-card">
                            <div class="ev-grid">
                                <div class="ev-group ev-col-2">
                                    <label class="ev-label">Tên sự kiện</label>
                                    <div class="ev-view-box ev-view-box--bold" id="view-eventName">Sale Tết Nguyên Đán 2026</div>
                                </div>

                                <div class="ev-group">
                                    <label class="ev-label">Loại giảm giá</label>
                                    <div class="ev-view-box" id="view-discountType">Phần trăm (%)</div>
                                </div>

                                <div class="ev-group">
                                    <label class="ev-label">Mức giảm</label>
                                    <div class="ev-view-box ev-view-box--red" id="view-discountValue">20%</div>
                                </div>

                                <div class="ev-group">
                                    <label class="ev-label">Ngày bắt đầu</label>
                                    <div class="ev-view-box" id="view-startDate">01/01/2026</div>
                                </div>

                                <div class="ev-group">
                                    <label class="ev-label">Ngày kết thúc</label>
                                    <div class="ev-view-box" id="view-endDate">15/01/2026</div>
                                </div>
                                <div class="ev-group">
                                    <label class="ev-label">Mô tả</label>
                                    <div class="ev-view-box ev-view-box" id="view-descrip">Chương trình khuyến mãi Tết Nguyên Đán 2026.</div>
                                </div>
                                <div class="ev-group ev-col-2">
                                    <label class="ev-label">Phạm vi áp dụng</label>
                                    <div class="ev-view-box">Sản phẩm cụ thể</div>
                                </div>
                            </div>

                            <div class="ev-scope-result">
                                <div class="ev-divider"></div>
                                <label class="ev-label">Sản phẩm đã áp dụng</label>
                                <div class="ev-table-wrapper">
                                    <table class="ev-table">
                                        <thead>
                                        <tr>
                                            <th></th>
                                            <th >Ảnh</th>
                                            <th>Tên sản phẩm</th>
                                            <th>Giá gốc</th>
                                            <th>Danh mục</th>
                                        </tr>
                                        </thead>
                                        <tbody id="viewSelectedProductList">
                                        <tr>
                                            <td><input type="checkbox" class="ev-checkbox--yellow" checked disabled></td>
                                            <td><img src="assets/img/binhxit.png" alt=""></td>
                                            <td>Bình xịt bọt tuyết siêu sạch</td>
                                            <td>150.000đ</td>
                                            <td>Gia dụng</td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>

                        <div class="ev-footer">
                            <button class="ev-btn ev-btn--outline" onclick="backToEventList()">Quay lại danh sách</button>
                        </div>
                    </section>

                    <section id="edit-event-page" class="ev-container" style="display: none;">
                        <div class="ev-header">
                            <h2 class="ev-title">Cập nhật sự kiện</h2>
                            <button class="ev-btn ev-btn--blue" onclick="backToEventList()">
                                <i class="fa-solid fa-check"></i> Lưu thay đổi
                            </button>
                        </div>

                        <div class="ev-card">
                            <form id="editEventForm">
                                <div class="ev-grid">
                                    <div class="ev-group ev-col-2">
                                        <label class="ev-label">Tên sự kiện</label>
                                        <input type="text" class="ev-input" id="edit-eventName" value="Sale Tết Nguyên Đán 2026">
                                    </div>

                                    <div class="ev-group">
                                        <label class="ev-label">Loại giảm giá</label>
                                        <select class="ev-input" id="edit-discountType">
                                            <option value="percentage">Phần trăm (%)</option>
                                            <option value="amount">Số tiền cố định (đ)</option>
                                        </select>
                                    </div>

                                    <div class="ev-group">
                                        <label class="ev-label">Mức giảm</label>
                                        <input type="number" class="ev-input" id="edit-discountValue" value="20">
                                    </div>

                                    <div class="ev-group">
                                        <label class="ev-label">Ngày bắt đầu</label>
                                        <input type="date" class="ev-input" id="edit-startDate" value="2026-01-01">
                                    </div>

                                    <div class="ev-group">
                                        <label class="ev-label">Ngày kết thúc</label>
                                        <input type="date" class="ev-input" id="edit-endDate" value="2026-01-15">
                                    </div>

                                    <div class="ev-group ev-col-2">
                                        <label class="ev-label">Mô tả sự kiện</label>
                                        <textarea class="ev-input" id="edit-eventDesc" rows="3" style="height: auto;">Chương trình khuyến mãi lớn nhất đầu năm dành cho mọi khách hàng khi mua sắm các thiết bị gia dụng và phụ kiện ô tô.</textarea>
                                    </div>

                                    <div class="ev-group ev-col-2">
                                        <label class="ev-label">Chọn Slide cho sự kiện</label>

                                        <div class="ev-slide-sel" id="editEventSlideSelect">
                                            <div class="ev-slide-sel__selected">
                                                <div class="ev-slide-opt">
                                                    <img src="assets/img/slide-main-thumb.png" alt="" class="ev-slide-opt__img">
                                                    <div class="ev-slide-opt__content">
                                                        <strong class="ev-slide-opt__title">Slide chính</strong>
                                                        <span class="ev-slide-opt__desc">- Banner lớn trang chủ</span>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="ev-slide-sel__options" style="display: none;">
                                                <div class="ev-slide-opt" data-value="none">
                                                    <div class="ev-slide-opt__content">
                                                        <strong class="ev-slide-opt__title">Không hiển thị lên Slide</strong>
                                                    </div>
                                                </div>
                                                <div class="ev-slide-opt" data-value="home-main">
                                                    <img src="assets/img/slide-main-thumb.png" alt="" class="ev-slide-opt__img">
                                                    <div class="ev-slide-opt__content">
                                                        <strong class="ev-slide-opt__title">Slide chính</strong>
                                                        <span class="ev-slide-opt__desc">- Banner lớn trang chủ</span>
                                                    </div>
                                                </div>
                                                <div class="ev-slide-opt" data-value="home-sub">
                                                    <img src="assets/img/slide-sub-thumb.png" alt="" class="ev-slide-opt__img">
                                                    <div class="ev-slide-opt__content">
                                                        <strong class="ev-slide-opt__title">Banner phụ</strong>
                                                        <span class="ev-slide-opt__desc">- Banner nhỏ bên phải</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <input type="hidden" id="editEventSlideTargetHidden" value="home-main">
                                    </div>
                                    <div class="ev-group ev-col-2">
                                        <label class="ev-label">Phạm vi áp dụng giảm giá</label>
                                        <div class="ev-radio-group">
                                            <label class="ev-radio">
                                                <input type="radio" name="editApplyScope" value="all" checked>
                                                <span class="ev-radio-mark"></span> <span>Tất cả sản phẩm</span>
                                            </label>
                                            <label class="ev-radio">
                                                <input type="radio" name="editApplyScope" value="category">
                                                <span class="ev-radio-mark"></span> <span>Theo danh mục</span>
                                            </label>
                                            <label class="ev-radio">
                                                <input type="radio" name="editApplyScope" value="specific">
                                                <span class="ev-radio-mark"></span> <span>Sản phẩm cụ thể</span>
                                            </label>
                                        </div>

                                        <div id="editScopeCategory" class="ev-scope-box" style="display: none; margin-top: 15px;">
                                            <select class="ev-input" id="editApplyCategories">
                                                <option value="">-- Chọn một danh mục --</option>
                                                <option value="1">Gia dụng - Nhà cửa</option>
                                                <option value="2">Phụ kiện ô tô</option>
                                            </select>
                                        </div>

                                        <div id="editScopeSpecific" class="ev-scope-box" style="display: none; margin-top: 15px;">
                                            <div class="ev-search-bar" style="max-width: 100%; margin-bottom: 10px;">
                                                <input type="text" id="editProductSearch" class="ev-input" placeholder="Tìm sản phẩm để cập nhật...">
                                            </div>
                                            <div class="ev-table-wrapper">
                                                <table class="ev-table">
                                                    <thead>
                                                    <tr>
                                                        <th >Chọn</th>
                                                        <th >Ảnh</th>
                                                        <th>Tên sản phẩm</th>
                                                        <th>Giá</th>
                                                        <th>Danh mục</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody id="editEventProductList">
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>

                        <div class="ev-footer">
                            <button class="ev-btn ev-btn--outline" onclick="backToEventList()">Hủy bỏ</button>
                        </div>
                    </section>
                    <section id="add-product" class="manage-detail" style="display:none;">
                        <h2 class="manage__heading">Thêm sản phẩm mới</h2>

                        <div class="product-table">
                            <div class="product-table__header">
                                <button type="submit" form="addProductFormInline" class="product-table__save">
                                    <i class="fa-solid fa-floppy-disk"></i>
                                </button>
                            </div>

                            <div class="product-table__inner">
                                <form id="addProductFormInline"
                                      class="add-product-form"
                                      method="POST"
                                      action="api/add-product.php"
                                      enctype="multipart/form-data">

                                    <div class="add-product-form__row">
                                        <div class="add-product-form__field">
                                            <label class="add-product-form__label">Tên sản phẩm:</label>
                                            <input type="text" name="productName" class="add-product-form__input" required>
                                        </div>
                                        <div class="add-product-form__field">
                                            <label class="add-product-form__label">Giá sản phẩm:</label>
                                            <input type="number" name="productPrice" class="add-product-form__input" required>
                                        </div>
                                        <div class="add-product-form__field">
                                            <label class="add-product-form__label">Số lượng:</label>
                                            <input type="number" name="productStock" class="add-product-form__input" required>
                                        </div>
                                    </div>

                                    <div class="add-product-form__row" style="align-items: center;">
                                        <div class="add-product-form__field" style="flex: 1;">
                                            <label class="add-product-form__label">Ảnh đại diện:</label>
                                            <input type="file" name="productImage" class="add-product-form__input" accept="image/*" required>
                                        </div>
                                        <div class="add-product-form__field" style="width: 100px;">
                                            <label class="add-product-form__label">Post ngay:</label>
                                            <input type="checkbox" name="isPost" value="1" class="product-table__checkbox" style="width: 20px; height: 20px;">
                                        </div>
                                    </div>

                                    <div class="add-product-form__field">
                                        <label class="add-product-form__label">Nhãn hiệu:</label>
                                        <select name="brandID" class="add-product-form__input" id="brandSelect" required>
                                            <option value="">-- Chọn thương hiệu --</option>
                                            <option value="1">Samsung</option> <option value="add-new">+ Thêm nhãn hiệu mới</option>
                                        </select>
                                    </div>

                                    <div class="add-product-form__field">
                                        <label class="add-product-form__label">Từ khóa (Tag):</label>
                                        <select name="tagID" class="add-product-form__input" id="tagSelect">
                                            <option value="">-- Chọn từ khóa --</option>
                                            <option value="1">Gia dụng</option>
                                            <option value="add-new">+ Thêm từ khóa mới</option>
                                        </select>
                                    </div>

                                    <div class="add-product-form__section">
                                        <label class="add-product-form__label">Mô tả sản phẩm:</label>
                                        <div class="add-product-input-group">
                                            <input type="text" id="descTitle" placeholder="Tiêu đề mô tả" class="add-product-form__input">
                                            <textarea id="descContent" placeholder="Nội dung mô tả" class="add-product-form__input"></textarea>
                                            <button type="button" class="bton btn--primary" onclick="addDescription()">Thêm mô tả</button>
                                        </div>
                                        <div id="descriptionList" class="added-items-list"></div>
                                    </div>

                                    <div class="add-product-form__section">
                                        <label class="add-product-form__label">Chi tiết sản phẩm (Ảnh & Nội dung):</label>
                                        <div class="add-product-input-group">
                                            <input type="file" id="detailImg" class="add-product-form__input">
                                            <input type="text" id="detailTitle" placeholder="Tiêu đề chi tiết" class="add-product-form__input">
                                            <textarea id="detailContent" placeholder="Nội dung chi tiết" class="add-product-form__input"></textarea>
                                            <button type="button" class="bton btn--primary" onclick="addDetail()">Thêm chi tiết</button>
                                        </div>
                                        <div id="detailList" class="added-items-list"></div>
                                    </div>

                                </form>
                            </div>
                        </div>

                    </section>
                    <div id="brandModal" class="admin-modal" style="display: none; position: fixed; top:0; left:0; width:100%; height:100%; background: rgba(0,0,0,0.5); z-index: 9999; justify-content: center; align-items: center;">
                        <div class="admin-modal__content" style="background: #fff; padding: 20px; border-radius: 8px; width: 400px;">
                            <h3>Thêm Nhãn Hiệu Mới</h3>
                            <form id="addBrandFormQuick">
                                <input type="text" name="brandName" placeholder="Tên nhãn hiệu" class="add-product-form__input" required style="width: 100%; margin-bottom: 10px;">
                                <input type="text" name="brandCountry" placeholder="Quốc gia" class="add-product-form__input" style="width: 100%; margin-bottom: 10px;">
                                <input type="file" name="brandLogo" accept="image/*" class="add-product-form__input" style="width: 100%; margin-bottom: 10px;">
                                <div class="admin-modal__actions" style="display: flex; justify-content: flex-end; gap: 10px;">
                                    <button type="button" class="bton btn--primary" onclick="closeModal('brandModal')">Hủy</button>
                                    <button type="button" class="bton btn--primary" onclick="saveNewBrand()">Lưu nhãn hiệu</button>
                                </div>
                            </form>
                        </div>
                    </div>

                    <div id="tagModal" class="admin-modal" style="display: none; position: fixed; top:0; left:0; width:100%; height:100%; background: rgba(0,0,0,0.5); z-index: 9999; justify-content: center; align-items: center;">
                        <div class="admin-modal__content" style="background: #fff; padding: 20px; border-radius: 8px; width: 400px;">
                            <h3>Thêm Từ Khóa Mới</h3>
                            <form id="addTagFormQuick">
                                <input type="text" id="newTagName" name="tagName" placeholder="Tên từ khóa" class="add-product-form__input" required style="width: 100%; margin-bottom: 10px;">
                                <textarea id="newTagDesc" name="tagDesc" placeholder="Mô tả từ khóa" class="add-product-form__input" style="width: 100%; margin-bottom: 10px;"></textarea>
                                <div class="admin-modal__actions" style="display: flex; justify-content: flex-end; gap: 10px;">
                                    <button type="button" class="bton btn--primary" onclick="closeModal('tagModal')">Hủy</button>
                                    <button type="button" class="bton btn--primary" onclick="saveNewTag()">Lưu từ khóa</button>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div id="viewProductModal" class="admin-modal">
                        <div class="admin-modal__content admin-modal__content--large">
                            <div class="modal-header">
                                <h3 class="manage__heading">Chi tiết sản phẩm</h3>
                            </div>

                            <div class="modal-body">
                                <div class="view-grid">
                                    <div class="view-col">
                                        <div class="view-image-box">
                                            <img id="v-image" src="assets/img/binhxit.png" alt="Ảnh sản phẩm" class="view-img-main">
                                        </div>
                                        <div class="view-time">
                                            <p><strong>Ngày tạo:</strong> <span id="v-createdAt">10/10/2025</span></p>
                                            <p><strong>Cập nhật:</strong> <span id="v-updatedAt">15/10/2025</span></p>
                                        </div>
                                    </div>

                                    <div class="view-col">
                                        <h2 id="v-name" class="view-product-title">Sản phẩm ABC</h2>

                                        <div class="view-info-group">
                                            <p><strong>Nhãn hiệu:</strong> <span class="badge" id="v-brand">Samsung</span></p>
                                            <p><strong>Từ khóa:</strong> <span class="badge badge--tag" id="v-tags">Đồ dùng vệ sinh</span></p>
                                        </div>

                                        <div class="view-price-card">
                                            <div class="price-item">
                                                <span>Giá gốc:</span>
                                                <del id="v-oldPrice">600.000đ</del>
                                            </div>
                                            <div class="price-item">
                                                <span>Giảm giá:</span>
                                                <span class="text-discount">-<span id="v-discount">10</span>%</span>
                                            </div>
                                            <div class="price-item price-item--main">
                                                <span>Giá mới:</span>
                                                <span id="v-newPrice" class="text-price">540.000đ</span>
                                            </div>
                                        </div>

                                        <div class="view-inventory">
                                            <p><strong>Số lượng còn lại:</strong> <span id="v-stock">50</span></p>
                                            <p><strong>Số lượng đã bán:</strong> <span id="v-sold">12</span></p>
                                            <p><strong>Trạng thái Post:</strong>
                                                <input type="checkbox" id="v-isPost" class="product-table__checkbox" checked disabled>
                                            </p>
                                        </div>
                                    </div>
                                </div>

                                <div class="view-section">
                                    <h4 class="view-section-title">Mô tả sản phẩm</h4>
                                    <div id="v-descriptionList" class="view-list">
                                        <div class="view-text-item">
                                            <h5>Tiêu đề mô tả (VD: Chất liệu)</h5>
                                            <p>Nội dung mô tả chi tiết về sản phẩm...</p>
                                        </div>
                                    </div>
                                </div>

                                <div class="view-section">
                                    <h4 class="view-section-title">Chi tiết kỹ thuật</h4>
                                    <div id="v-detailList" class="view-detail-grid">
                                        <div class="view-detail-card">
                                            <img src="assets/img/binhxit.png" alt="Detail">
                                            <div class="view-detail-info">
                                                <h5>Tiêu đề chi tiết</h5>
                                                <p>Nội dung chi tiết đi kèm ảnh...</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="v-detailList" class="view-detail-grid">
                                        <div class="view-detail-card">
                                            <img src="assets/img/binhxit.png" alt="Detail">
                                            <div class="view-detail-info">
                                                <h5>Tiêu đề chi tiết</h5>
                                                <p>Nội dung chi tiết đi kèm ảnh...</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class="product-view-footer">
                                <button type="button" class="btn btn--primary btn--back-rect" onclick="backToList()">
                                    Quay lại
                                </button>
                            </div>
                        </div>
                    </div>
                    <div id="editProductPage" class="admin-content-page" style="display: none;">
                        <div class="admin-modal__content--large">
                            <div class="modal-header">
                                <h3 class="manage__heading">Chỉnh sửa sản phẩm</h3>
                            </div>

                            <div class="modal-body">
                                <form id="editProductForm">
                                    <div class="view-grid">
                                        <div class="view-col">
                                            <div class="view-image-box">
                                                <img id="edit-v-image" src="assets/img/binhxit.png" alt="Ảnh sản phẩm" class="view-img-main">
                                                <div class="upload-action">
                                                    <label for="input-file-edit" class="btn-upload">
                                                        <i class="fa-solid fa-camera"></i> Thay đổi ảnh
                                                    </label>
                                                    <input type="file" id="input-file-edit" hidden>
                                                </div>
                                            </div>
                                            <div class="view-time">
                                                <p><strong>Ngày tạo:</strong> <span>10/10/2025</span></p>
                                                <p><strong>Lần cuối:</strong> <span>Vừa xong</span></p>
                                            </div>
                                        </div>

                                        <div class="view-col">
                                            <div class="edit-info-list">
                                                <div class="info-row">
                                                    <label class="info-label">Tên sản phẩm:</label>
                                                    <input type="text" id="edit-name" class="form-input primary-focus" value="Sản phẩm ABC">
                                                </div>

                                                <div class="info-row">
                                                    <label class="info-label">Nhãn hiệu:</label>
                                                    <select id="edit-brand" class="form-input">
                                                        <option value="samsung">Samsung</option>
                                                        <option value="apple">Apple</option>
                                                    </select>
                                                </div>

                                                <div class="info-row">
                                                    <label class="info-label">Từ khóa (Tags):</label>
                                                    <select id="edit-tags" class="form-input">
                                                        <option value="gia-dung">Gia dụng</option>
                                                        <option value="dien-tu">Điện tử</option>
                                                    </select>
                                                </div>

                                                <div class="view-price-card">
                                                    <div class="price-edit-row">
                                                        <label class="price-label">Giá gốc (đ):</label>
                                                        <input type="number" id="edit-oldPrice" class="form-input-small" value="600000">
                                                    </div>
                                                    <div class="price-edit-row">
                                                        <label class="price-label">Giảm giá (%):</label>
                                                        <input type="number" id="edit-discount" class="form-input-small" value="10">
                                                    </div>
                                                    <div class="price-edit-row">
                                                        <label class="price-label primary-text">Giá mới (đ):</label>
                                                        <input type="number" id="edit-newPrice" class="form-input-small price-edit-input" value="540000">
                                                    </div>
                                                </div>

                                                <div class="view-inventory" style="margin-top: 20px; border-top: 1px dashed #ddd; padding-top: 15px;">
                                                    <div class="inventory-row">
                                                        <div class="info-row no-border">
                                                            <label class="info-label">Kho hàng:</label>
                                                            <input type="number" id="edit-stock" class="form-input-small" style="width: 80px;" value="50">
                                                        </div>
                                                        <div class="info-row no-border">
                                                            <label class="info-label">Đã bán:</label>
                                                            <input type="number" id="edit-sold" class="form-input-small" style="width: 80px;" value="12">
                                                        </div>
                                                    </div>
                                                    <div class="info-row no-border mt-10">
                                                        <label class="info-label">Trạng thái Post:</label>
                                                        <input type="checkbox" id="edit-isPost" class="product-table__checkbox" style="width: 20px; height: 20px;" checked>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="view-section">
                                        <h4 class="view-section-title">Mô tả sản phẩm</h4>
                                        <div id="edit-v-descriptionList" class="edit-mode-list">
                                            <div class="edit-item-box">
                                                <input type="text" class="form-input edit-sub-title" value="Chất liệu" placeholder="Tiêu đề">
                                                <textarea class="form-textarea" rows="2" placeholder="Nội dung mô tả..."></textarea>
                                            </div>
                                        </div>
                                        <button type="button" class="btn-add-more">+ Thêm dòng mô tả</button>
                                    </div>

                                    <div class="view-section">
                                        <h4 class="view-section-title">Chi tiết sản phẩm</h4>
                                        <div id="edit-v-detailList" class="edit-mode-list">
                                            <div class="edit-detail-card">
                                                <div class="edit-card-img">
                                                    <img src="assets/img/binhxit.png" alt="Detail">
                                                    <label class="change-img-mini"><i class="fa-solid fa-camera"></i> <input type="file" hidden></label>
                                                </div>
                                                <div class="view-detail-info">
                                                    <input type="text" class="form-input edit-sub-title" value="Đặc điểm nổi bật" placeholder="Tiêu đề">
                                                    <textarea class="form-textarea" rows="3" placeholder="Nội dung chi tiết..."></textarea>
                                                </div>
                                            </div>
                                        </div>
                                        <div id="edit-v-detailList" class="edit-mode-list">
                                            <div class="edit-detail-card">
                                                <div class="edit-card-img">
                                                    <img src="assets/img/binhxit.png" alt="Detail">
                                                    <label class="change-img-mini"><i class="fa-solid fa-camera"></i> <input type="file" hidden></label>
                                                </div>
                                                <div class="view-detail-info">
                                                    <input type="text" class="form-input edit-sub-title" value="Đặc điểm nổi bật" placeholder="Tiêu đề">
                                                    <textarea class="form-textarea" rows="3" placeholder="Nội dung chi tiết..."></textarea>
                                                </div>
                                            </div>
                                        </div>
                                        <button type="button" class="btn-add-more">+ Thêm khối chi tiết</button>
                                    </div>

                                    <div class="product-view-footer">
                                        <button type="button" class="bton btn-cancel" onclick="backFromEdit()">Hủy bỏ</button>
                                        <button type="submit" class="bton btn--primary btn--back-rect">Lưu thay đổi</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>

                    <section id="order" class="manage-detail">
                        <h2 class="manage__heading">Đơn hàng</h2>

                        <div class="order-table">

                            <!-- Form tìm kiếm -->
                            <form action="<c:url value='/order-search'/>" method="get">
                                <div class="order-table__filter">
                                    <div class="order-table__filter-label">
                                        Điều kiện lọc
                                        <i class="order-table__filter-icon fa-solid fa-caret-down"></i>
                                    </div>

                                    <input type="text"
                                           name="keyword"
                                           class="order-table__search"
                                           placeholder="Nhập mã đơn hoặc tên khách"
                                           value="${keyword}">

                                    <button type="submit"
                                            class="btn btn--default-color order-table__search-btn">
                                        Tìm kiếm
                                    </button>
                                </div>
                            </form>

                            <!-- Form xóa -->
                            <form id="deleteOrdersForm" action="<c:url value='/order-delete'/>" method="post">
                                <div class="order-table__header">
                                    <h3 class="order-table__heading">Danh sách đơn hàng</h3>
                                    <!-- Nút xóa phải nằm trong form này -->
                                    <button type="submit" class="btn btn--default-color order-table__btn">Xóa các mục đã chọn</button>
                                </div>

                                <div class="order-table__inner">

                                    <!-- Header -->
                                    <div class="order-table__row">
                                        <div class="order-table__check">
                                            <input type="checkbox" id="selectAll" class="order-table__checkbox">
                                        </div>
                                        <div class="order-table__cell">Mã</div>
                                        <div class="order-table__cell">Khách hàng</div>
                                        <div class="order-table__cell">Trạng thái</div>
                                        <div class="order-table__cell">Thanh toán</div>
                                        <div class="order-table__cell">Ngày tạo</div>
                                        <div class="order-table__cell">Tổng tiền</div>
                                    </div>

                                    <!-- Row -->
                                    <c:forEach var="order" items="${orders}">
                                        <article class="order-table__row ${order.rowClass}">
                                            <div class="order-table__check">
                                                <input type="checkbox" name="orderIds" value="${order.id}" class="order-table__checkbox">
                                            </div>

                                            <div class="order-table__cell">
                                                <a href="#!" class="order-table__text order-table__link">${order.id}</a>
                                            </div>

                                            <div class="order-table__cell">
                                                <span class="order-table__text">${order.customer_name}</span>
                                            </div>

                                            <div class="order-table__cell">
                                                <span class="order-table__status ${order.statusTransportClass}">
                                                        ${order.statusTransportText}
                                                </span>
                                            </div>

                                            <div class="order-table__cell">
                                                <span class="order-table__status ${order.statusPaymentClass}">
                                                        ${order.statusPaymentText}
                                                </span>
                                            </div>

                                            <div class="order-table__cell">${order.created_at}</div>

                                            <div class="order-table__cell">${order.total_price}đ</div>
                                        </article>
                                    </c:forEach>
                                </div>
                            </form>
                        </div>

                    </section>
                </div>
            </div>
        </div>
    </div>
</main>
</body>

<script>
    const sectionConfig = document.getElementById("config");
    const sectionProduct = document.getElementById("product");
    const sectionAdd = document.getElementById("add-product");
    const sectionOrder = document.getElementById("order");
    const sectionCustomer = document.getElementById("customer");
    const sectionCustomerDetail = document.getElementById("customer-detail");
    const sectionCustomerEdit = document.getElementById("customer-edit");
    const sectionNews = document.getElementById("news");
    const newsMenuButtons = document.querySelectorAll(".news-menu__btn");
    const sectionSlideDetail = document.getElementById("slide-detail");
    const sectionBlogDetail = document.getElementById("blog-detail");
    const sectionSlideEdit = document.getElementById("slide-edit");
    const sectionBlogEdit = document.getElementById("blog-edit");
    const sectionSlide = document.getElementById("news-slide");
    const sectionBlog = document.getElementById("news-blog");
    const sectionSlideAdd = document.getElementById("add-slide");
    const sectionBlogAdd  = document.getElementById("add-blog");
    const btnAddSlide = document.querySelector("#news-slide .add-table__btn");
    const btnAddBlog  = document.querySelector("#news-blog .add-table__btn");
    const productMenuButtons = document.querySelectorAll(".product-menu__btn");
    const sectionProductDetail = document.getElementById("viewProductModal");
    const sectionProductEdit = document.getElementById("editProductPage");
    const sectionProductList = document.getElementById("product-list-section");
    const sectionProductEvent = document.getElementById("product-event-section");
    const sectionEventAdd = document.getElementById("add-event-page");
    const btnAddEventTrigger = document.querySelector(".event-header__btn");

    const slideSelect = document.getElementById('eventSlideSelect');
    const selectedBox = slideSelect.querySelector('.event-select__selected');
    const optionsBox = slideSelect.querySelector('.event-select__options');
    const hiddenInput = document.getElementById('eventSlideTargetHidden');
    const options = slideSelect.querySelectorAll('.event-option')
    const uploadGroup = document.getElementById('eventUploadGroup');
    const editScopeRadios = document.querySelectorAll('input[name="editApplyScope"]');
    const editBoxCategory = document.getElementById('editScopeCategory');
    const editBoxSpecific = document.getElementById('editScopeSpecific');
    const sectionEventView = document.getElementById("view-event-page");
    const sectionEventEdit = document.getElementById("edit-event-page");
    const editSlideSelect = document.getElementById('editEventSlideSelect');
    const sidebarItems = document.querySelectorAll(".product-sidebar__item");
    const sidebarSubLinks = document.querySelectorAll(".product-sub__link");



    const newsSections = {
        "news-slide": document.getElementById("news-slide"),
        "news-blog": document.getElementById("news-blog")
    };
    const menuLinks = document.querySelectorAll(".manage-nav__link");
    const btnAdd = document.querySelector(".product-table__btn");

    // Hàm ẩn tất cả section
    function hideAllSections() {
        sectionProduct.style.display = "none";
        sectionAdd.style.display = "none";
        sectionOrder.style.display = "none";
        sectionConfig.style.display = "none";
        sectionCustomer.style.display = "none";
        sectionCustomerDetail.style.display = "none";
        sectionCustomerEdit.style.display = "none";
        sectionNews.style.display = "none";
        sectionProductDetail.style.display = "none";
        sectionProductEdit.style.display = "none";
        sectionProductEvent.style.display = "none";
        sectionEventAdd.style.display = "none";
        sectionEventView.style.display = "none";
        sectionEventEdit.style.display = "none";

    }

    // Click menu
    menuLinks.forEach(link => {
        link.addEventListener("click", function(e) {
            const href = this.getAttribute("href");

            // Nếu là link thật (vd: /admin/customers) => cho đi bình thường để controller nạp DB
            if (!href || !href.startsWith("#")) return;

            e.preventDefault();
            const targetId = href.replace("#", "");
            hideAllSections();
            if(targetId === "config") sectionConfig.style.display = "block";
            if(targetId === "product") sectionProduct.style.display = "block";
            if(targetId === "order") sectionOrder.style.display = "block";
            if (targetId === "customer") sectionCustomer.style.display = "block";
            if (targetId === "news") showNewsDefault();
        });
    });

    productMenuButtons.forEach(btn => {
        btn.addEventListener("click", () => {
            const targetId = btn.getAttribute("data-target");

            // Ẩn các content trong product
            Object.values(productContents).forEach(content => {
                if(content) content.style.display = "none";
            });
            productMenuButtons.forEach(b => b.classList.remove("active"));

            if(productContents[targetId]) {
                productContents[targetId].style.display = "block";
            }
            btn.classList.add("active");
        });
    });

    sidebarItems.forEach(item => {
        const parentLink = item.querySelector(".product-sidebar__link");

        parentLink.addEventListener("click", (e) => {
            e.preventDefault();

            const isActive = item.classList.contains("active") || item.classList.contains("product-sidebar__item--active");

            sidebarItems.forEach(i => {
                i.classList.remove("active");
                i.classList.remove("product-sidebar__item--active");


                const childLinks = i.querySelectorAll(".product-sub__link");
                childLinks.forEach(link => link.classList.remove("active"));
            });

            if (!isActive) {

                item.classList.add("active");

                const firstSub = item.querySelector(".product-sub__link");
                if (firstSub) {
                    firstSub.classList.add("active");
                }
            } else {
                console.log("Đã đóng menu");
            }
        });
    });


    sidebarSubLinks.forEach(sub => {
        sub.addEventListener("click", (e) => {
            e.preventDefault();
            e.stopPropagation();

            sidebarSubLinks.forEach(s => s.classList.remove("active"));

            sub.classList.add("active");
        });
    });

    function initProductDefault() {
        Object.values(productContents).forEach(c => { if(c) c.style.display = "none"; });
        productContents["product-list"].style.display = "block";
        productMenuButtons.forEach(b => b.classList.remove("active"));
        document.querySelector(".product-menu__btn[data-target='product-list']").classList.add("active");

        sidebarItems.forEach(i => i.classList.remove("active"));
        sidebarSubLinks.forEach(s => s.classList.remove("active"));

        if(sidebarItems[0]) sidebarItems[0].classList.add("active");
        if(sidebarSubLinks[0]) sidebarSubLinks[0].classList.add("active");
    }
    productMenuButtons.forEach(button => {
        button.addEventListener("click", function() {
            productMenuButtons.forEach(btn => btn.classList.remove("active"));
            this.classList.add("active");

            const target = this.getAttribute("data-target");

            if (target === "product-list") {

                sectionProductList.style.display = "block";
                sectionProductEvent.style.display = "none";
                document.querySelector(".product-sidebar").style.display = "block";
            }
            else if (target === "product-event") {

                sectionProductList.style.display = "none";
                sectionProductEvent.style.display = "block";
                document.querySelector(".product-sidebar").style.display = "none";
            }
        });
    });
    // 1. Khi bấm nút "Thêm sự kiện giảm giá" (Nút xanh ở trang quản lý sự kiện)
    if (btnAddEventTrigger) {
        btnAddEventTrigger.addEventListener("click", () => {
            hideAllSections();
            sectionEventAdd.style.display = "block";
            window.scrollTo({ top: 0, behavior: "smooth" });
        });
    }

    function backToEventList() {
        // Ẩn trang thêm sự kiện
        sectionEventAdd.style.display = "none";

        // Hiển thị lại trang Sản phẩm (cha)
        sectionProduct.style.display = "block";

        // Kích hoạt hiển thị Tab Sự kiện bên trong trang Sản phẩm
        sectionProductEvent.style.display = "block";
        sectionProductList.style.display = "none";
        sectionEventView.style.display = "none";
        sectionEventEdit.style.display = "none";

        // Ẩn sidebar vì trang sự kiện của bạn không dùng sidebar
        const sidebar = document.querySelector(".product-sidebar");
        if (sidebar) sidebar.style.display = "none";

        // Cập nhật trạng thái Active cho menu con
        productMenuButtons.forEach(btn => {
            if (btn.getAttribute("data-target") === "product-event") {
                btn.classList.add("active");
            } else {
                btn.classList.remove("active");
            }
        });

        window.scrollTo({ top: 0, behavior: "smooth" });
    }

    // 3. Xử lý Radio "Phạm vi áp dụng" để ẩn hiện nội dung theo dòng
    const scopeRadios = document.querySelectorAll('input[name="applyScope"]');
    const boxCategory = document.getElementById('scopeCategory');
    const boxSpecific = document.getElementById('scopeSpecific');

    scopeRadios.forEach(radio => {
        radio.addEventListener('change', (e) => {
            const val = e.target.value;

            // Ẩn tất cả trước
            boxCategory.style.display = "none";
            boxSpecific.style.display = "none";

            // Hiện theo lựa chọn
            if (val === "category") {
                boxCategory.style.display = "block";
            } else if (val === "specific") {
                boxSpecific.style.display = "block";
            }
        });
    });
    // --- XỬ LÝ CHỌN SLIDE CHO SỰ KIỆN ---
    if (slideSelect) {

        selectedBox.addEventListener('click', (e) => {
            e.stopPropagation();
            slideSelect.classList.toggle('active');

            if (slideSelect.classList.contains('active')) {
                optionsBox.style.display = 'block';
            } else {
                optionsBox.style.display = 'none';
            }
        });

        options.forEach(option => {
            option.addEventListener('click', (e) => {
                e.stopPropagation();

                const val = option.getAttribute('data-value')
                selectedBox.innerHTML = option.innerHTML;

                hiddenInput.value = val;

                slideSelect.classList.remove('active');
                optionsBox.style.display = 'none';
            });
        });

        document.addEventListener('click', () => {
            if (slideSelect.classList.contains('active')) {
                slideSelect.classList.remove('active');
                optionsBox.style.display = 'none';
            }
        });
    }
    editScopeRadios.forEach(radio => {
        radio.addEventListener('change', (e) => {
            editBoxCategory.style.display = (e.target.value === "category") ? "block" : "none";
            editBoxSpecific.style.display = (e.target.value === "specific") ? "block" : "none";
        });
    });
    document.querySelectorAll(".event-table__row .event-col-action:nth-child(5)").forEach(btn => {

        btn.addEventListener("click", function() {
            hideAllSections();


            if (sectionEventView) {
                sectionEventView.style.display = "block";
                window.scrollTo({ top: 0, behavior: "smooth" });
            }
        });
    });

    // Chức năng Sửa sự kiện
    document.querySelectorAll(".event-table__row .event-col-action:nth-child(6)").forEach(btn => {
        // Tìm cột Sửa (thường là cột thứ 6 trong hàng)
        btn.addEventListener("click", function() {
            hideAllSections();

            if (sectionEventEdit) {
                sectionEventEdit.style.display = "block";
                window.scrollTo({ top: 0, behavior: "smooth" });
            }
        });
    });
    if (editSlideSelect) {
        const editSelectedBox = editSlideSelect.querySelector('.ev-slide-sel__selected');
        const editOptionsBox = editSlideSelect.querySelector('.ev-slide-sel__options');
        const editHiddenInput = document.getElementById('editEventSlideTargetHidden');
        const editOptions = editSlideSelect.querySelectorAll('.ev-slide-opt');

        // Click vào hộp đã chọn để sổ menu ra hoặc đóng lại
        editSelectedBox.addEventListener('click', (e) => {
            e.stopPropagation(); // Ngăn sự kiện nổi bọt lên document

            // Đóng các dropdown khác nếu có (tùy chọn)
            const isOpen = editOptionsBox.style.display === 'block';
            editOptionsBox.style.display = isOpen ? 'none' : 'block';
            editSlideSelect.classList.toggle('active', !isOpen);
        });

        // Click chọn từng Option
        editOptions.forEach(option => {
            option.addEventListener('click', (e) => {
                e.stopPropagation();

                // Lấy giá trị data-value
                const val = option.getAttribute('data-value');
                if (val === null) return; // Bỏ qua nếu click trúng phần header không có value

                // Cập nhật giao diện của hộp "Đã chọn" (Copy toàn bộ nội dung HTML của option vào hộp chính)
                editSelectedBox.innerHTML = option.innerHTML;

                // Cập nhật giá trị vào input hidden để gửi đi khi lưu form
                editHiddenInput.value = val;

                // Đóng menu sổ xuống
                editOptionsBox.style.display = 'none';
                editSlideSelect.classList.remove('active');

                console.log("Đã chọn slide:", val);
            });
        });

        document.addEventListener('click', () => {
            if (editOptionsBox.style.display === 'block') {
                editOptionsBox.style.display = 'none';
                editSlideSelect.classList.remove('active');
            }
        });
    }
    // Click "Thêm sản phẩm"
    btnAdd.addEventListener("click", () => {
        hideAllSections();       // ẩn tất cả trước
        sectionAdd.style.display = "block"; // chỉ hiện form thêm sản phẩm
    });

    // Nếu muốn quay lại bảng sản phẩm, có thể thêm nút "Quay lại"
    const backBtn = document.createElement("button");
    backBtn.textContent = "Quay lại danh sách sản phẩm";
    backBtn.className = "btn btn--default-color product-table__back-btn";
    sectionAdd.appendChild(backBtn);

    backBtn.addEventListener("click", () => {
        sectionAdd.style.display = "none";
        sectionProduct.style.display = "block";
    });
    //  Gán sự kiện cho các nút "Xem" trong bảng sản phẩm
    document.querySelectorAll(".product-table__row .product-table__view").forEach(btn => {
        if (btn.textContent.trim() === "Xem") {
            btn.addEventListener("click", function() {
                hideAllSections();

                sectionProductDetail.style.display = "block";
                sectionProductDetail.style.position = "static";
                sectionProductDetail.style.backgroundColor = "transparent";
                sectionProductDetail.style.padding = "0";

                window.scrollTo({ top: 0, behavior: "smooth" });

            });
        }
    });


    document.querySelectorAll(".product-table__row .product-table__edit").forEach(btn => {
        if (btn.textContent.trim() === "Sửa") {
            btn.addEventListener("click", function() {
                hideAllSections(); // Bước này sẽ ẩn trang Product (Danh sách)

                sectionProductEdit.style.display = "block"; // Hiện trang Edit
                sectionProductEdit.style.position = "static";
                sectionProductEdit.style.backgroundColor = "transparent";
                sectionProductEdit.style.padding = "0";

                window.scrollTo({ top: 0, behavior: "smooth" });
            });
        }
    });

    function backToList() {
        sectionProductDetail.style.display = "none";
        sectionProduct.style.display = "block";
        window.scrollTo({ top: 0, behavior: "smooth" });
    }

    // Hàm quay lại cho trang SỬA sản phẩm
    function backFromEdit() {
        // Ẩn trang Edit
        sectionProductEdit.style.display = "none";
        // Hiện lại trang danh sách
        sectionProduct.style.display = "block";
        window.scrollTo({ top: 0, behavior: "smooth" });
    }

    // Hàm Đóng dùng chung (CHỈ GIỮ LẠI 1 HÀM NÀY)
    function closeModal(id) {
        if (id === 'viewProductModal') {
            backToList();
        } else if (id === 'editProductPage') {
            backFromEdit();
        } else {
            // Xử lý cho các modal khác nếu có (như brandModal, tagModal)
            const modal = document.getElementById(id);
            if (modal) modal.style.display = "none";
        }
    }
    // Xử lý submit form
    const formInline = document.getElementById("addProductFormInline");
    formInline.addEventListener("submit", (e) => {
        e.preventDefault();
        console.log("Thêm sản phẩm inline:", {
            name: document.getElementById("productNameInline").value,
            image: document.getElementById("productImageInline").files[0],
            date: document.getElementById("productDateInline").value
        });

        // Sau khi submit xong, quay lại bảng sản phẩm
        sectionAdd.style.display = "none";
        sectionProduct.style.display = "block";
        formInline.reset();
    });
    // Click nút "Xem"
    document.querySelectorAll(".customer-table__view").forEach(btn => {
        btn.addEventListener("click", () => {
            hideAllSections();
            sectionCustomerDetail.style.display = "block";

            window.scrollTo({ top: 0, behavior: "smooth" });
        });
    });

    // Click nút "Đóng"
    const btnBackCustomer = document.querySelector(
        "#customer-detail .btn--default-color"
    );

    if (btnBackCustomer) {
        btnBackCustomer.addEventListener("click", () => {
            sectionCustomerDetail.style.display = "none";
            sectionCustomer.style.display = "block";

            window.scrollTo({ top: 0, behavior: "smooth" });
        });
    }
    // ================== KHÁCH HÀNG (CUSTOMER) ==================

    // Nếu bạn chưa khai báo mấy biến section này ở trên thì thêm:
    const sectionCustomer = document.getElementById("customer");
    const sectionCustomerDetail = document.getElementById("customer-detail");
    const sectionCustomerEdit = document.getElementById("customer-edit");

    function normalizeRole(role) {
        return String(role) === "1" ? "Admin" : "Customer";
    }

    function setStatusBadge(el, status) {
        if (!el) return;
        const active = String(status) === "1";
        el.textContent = active ? "Hoạt động" : "Khóa";
        el.classList.remove("online", "offline");
        el.classList.add(active ? "online" : "offline");
    }

    function setAvatar(imgEl, avatar) {
        if (!imgEl) return;
        const src = (avatar && avatar.trim() !== "") ? avatar : "assets/img/avatar-default.png";
        imgEl.setAttribute("src", src);
    }

    function showCustomerDetailFromDataset(ds) {
        hideAllSections();
        sectionCustomerDetail.style.display = "block";

        document.getElementById("customerDetailId").textContent = ds.id || "";
        document.getElementById("customerDetailName").textContent = ds.name || "";
        document.getElementById("customerDetailEmail").textContent = ds.email || "";
        document.getElementById("customerDetailPhone").textContent = ds.phone || "";
        document.getElementById("customerDetailAddress").textContent = ds.address || "";
        document.getElementById("customerDetailRole").textContent = normalizeRole(ds.role);

        setAvatar(document.getElementById("customerDetailAvatar"), ds.avatar);
        setStatusBadge(document.getElementById("customerDetailStatus"), ds.status);

        window.scrollTo({ top: 0, behavior: "smooth" });
    }

    function showCustomerEditFromDataset(ds) {
        hideAllSections();
        sectionCustomerEdit.style.display = "block";

        document.getElementById("editId").value = ds.id || "";
        document.getElementById("editName").value = ds.name || "";
        document.getElementById("editEmail").value = ds.email || "";
        document.getElementById("editPhone").value = ds.phone || "";
        document.getElementById("editAddress").value = ds.address || "";
        document.getElementById("editPassword").value = "";

        const roleSel = document.getElementById("editRole");
        if (roleSel) roleSel.value = (ds.role == null ? "0" : String(ds.role));

        const statusSel = document.getElementById("editStatus");
        if (statusSel) statusSel.value = (ds.status == null ? "1" : String(ds.status));

        window.scrollTo({ top: 0, behavior: "smooth" });
    }

    document.querySelectorAll(".customer-table__view").forEach(btn => {
        btn.addEventListener("click", () => showCustomerDetailFromDataset(btn.dataset));
    });

    document.querySelectorAll(".customer-table__edit").forEach(btn => {
        btn.addEventListener("click", () => showCustomerEditFromDataset(btn.dataset));
    });

    function hideCustomerDetail() {
        hideAllSections();
        sectionCustomer.style.display = "block";
        window.scrollTo({ top: 0, behavior: "smooth" });
    }

    function hideCustomerEdit() {
        hideAllSections();
        sectionCustomer.style.display = "block";
        window.scrollTo({ top: 0, behavior: "smooth" });
    }


    // === Xem chi tiết Blog ===
    document.querySelectorAll("#news-blog .news-table__view").forEach(btn => {
        btn.addEventListener("click", () => {
            hideAllSections();
            hideAllDetailSections();
            sectionBlogDetail.style.display = "block";
            window.scrollTo({ top: 0, behavior: "smooth" });
        });
    });

    // === Sửa Slide/Blog ===
    document.querySelectorAll(".news-table__edit").forEach(btn => {
        btn.addEventListener("click", () => {
            const parentTable = btn.closest(".news-table");
            hideAllSections();
            hideAllDetailSections();
            if (parentTable.id === "news-slide") sectionSlideEdit.style.display = "block";
            if (parentTable.id === "news-blog") sectionBlogEdit.style.display = "block";
            window.scrollTo({ top: 0, behavior: "smooth" });
        });
    });

    function showNewsWithTab(tabId) {
        sectionNews.style.display = "block";

        hideAllNewsSections();

        if (newsSections[tabId]) {
            newsSections[tabId].style.display = "block";
            document
                .querySelector(`.news-menu__btn[data-target='${tabId}']`)
                .classList.add("active");
        }

        window.scrollTo({ top: 0, behavior: "smooth" });
    }

    // === Nút đóng chi tiết Slide/Blog ===
    function hideSlideDetail() {
        sectionSlideDetail.style.display = "none";
        showNewsWithTab("news-slide");
    }

    function hideBlogDetail() {
        sectionBlogDetail.style.display = "none";
        showNewsWithTab("news-blog");
    }

    // === Nút hủy Slide/Blog Edit ===
    function hideSlideEdit() {
        sectionSlideEdit.style.display = "none";
        showNewsWithTab("news-slide");
    }

    function hideBlogEdit() {
        sectionBlogEdit.style.display = "none";
        showNewsWithTab("news-blog");
    }
    function hideAllNewsViews() {
        sectionSlide.style.display = "none";
        sectionBlog.style.display  = "none";

        sectionSlideAdd.style.display = "none";
        sectionBlogAdd.style.display  = "none";

        sectionSlideDetail.style.display = "none";
        sectionBlogDetail.style.display  = "none";
        sectionSlideEdit.style.display   = "none";
        sectionBlogEdit.style.display    = "none";

        newsMenuButtons.forEach(btn => btn.classList.remove("active"));
    }
    if (btnAddSlide) {
        btnAddSlide.addEventListener("click", () => {
            hideAllSections();
            hideAllNewsViews();

            sectionNews.style.display = "block";
            sectionSlideAdd.style.display = "block";

            document
                .querySelector(".news-menu__btn[data-target='news-slide']")
                .classList.add("active");

            window.scrollTo({ top: 0, behavior: "smooth" });
        });
    }
    if (btnAddBlog) {
        btnAddBlog.addEventListener("click", () => {
            hideAllSections();
            hideAllNewsViews();

            sectionNews.style.display = "block";
            sectionBlogAdd.style.display = "block";

            document
                .querySelector(".news-menu__btn[data-target='news-blog']")
                .classList.add("active");

            window.scrollTo({ top: 0, behavior: "smooth" });
        });
    }
    function hideSlideAdd() {
        hideAllNewsViews();
        sectionNews.style.display = "block";
        sectionSlide.style.display = "block";

        document
            .querySelector(".news-menu__btn[data-target='news-slide']")
            .classList.add("active");

        window.scrollTo({ top: 0, behavior: "smooth" });
    }

    function hideBlogAdd() {
        hideAllNewsViews();
        sectionNews.style.display = "block";
        sectionBlog.style.display = "block";

        document
            .querySelector(".news-menu__btn[data-target='news-blog']")
            .classList.add("active");

        window.scrollTo({ top: 0, behavior: "smooth" });
    }
    document.getElementById('brandSelect').addEventListener('change', function() {
        if (this.value === 'add-new') {
            openModal('brandModal');
            this.value = "";
        }
    });

    document.getElementById('tagSelect').addEventListener('change', function() {
        if (this.value === 'add-new') {
            openModal('tagModal');
            this.value = "";
        }
    });


</script>

<script src="https://cdn.jsdelivr.net/npm/quill@2.0.3/dist/quill.js"></script>

<script>
    document.addEventListener("DOMContentLoaded", function() {
        const quill = new Quill('#editor', {
            theme: 'snow',
            modules: {
                toolbar: [
                    [{ header: [1, 2, 3, false] }],
                    ['bold', 'italic', 'underline', 'strike'],
                    [{ list: 'ordered' }, { list: 'bullet' }],
                    ['link', 'image'],
                    ['clean']
                ]
            }
        });

        // Gán nội dung khởi tạo
        quill.setText('Nội dung');
    });
    // --- XỬ LÝ HIỂN THỊ CỬA SỔ NHẬP (MODAL) ---

    function openModal(id) {
        const modal = document.getElementById(id);
        if (modal) {
            modal.style.display = 'flex'; // Hiển thị modal
        }
    }

    function closeModal(id) {
        const modal = document.getElementById(id);
        if (modal) {
            modal.style.display = 'none'; // Ẩn modal
        }
        // Khi đóng, reset lại thanh chọn về mặc định để tránh bị kẹt ở chữ "Thêm mới"
        if (id === 'brandModal') document.getElementById('brandSelect').value = '';
        if (id === 'tagModal') document.getElementById('tagSelect').value = '';
    }

    // 3. Lắng nghe sự kiện thay đổi trên các thẻ Select
    document.addEventListener('DOMContentLoaded', function() {

        // Kiểm tra chọn nhãn hiệu
        const brandSelect = document.getElementById('brandSelect');
        if (brandSelect) {
            brandSelect.addEventListener('change', function() {
                if (this.value === 'add-new') {
                    openModal('brandModal');
                }
            });
        }

        // Kiểm tra chọn từ khóa
        const tagSelect = document.getElementById('tagSelect');
        if (tagSelect) {
            tagSelect.addEventListener('change', function() {
                if (this.value === 'add-new') {
                    openModal('tagModal');
                }
            });
        }
    });

    // --- CHỨC NĂNG HIỂN THỊ CỬA SỔ (MODAL) ---

    function openModal(modalId) {
        const modal = document.getElementById(modalId);
        if (modal) {
            modal.style.display = "flex";
        }
    }

    function closeModal(modalId) {
        const modal = document.getElementById(modalId);
        if (modal) {
            modal.style.display = "none";
        }
    }

    document.getElementById('brandSelect').addEventListener('change', function() {
        if (this.value === 'add-new') {
            openModal('brandModal');
            // QUAN TRỌNG: Reset giá trị về trống ngay lập tức
            // để lần sau chọn lại "add-new" nó vẫn tính là có sự thay đổi (change)
            this.value = "";
        }
    });

    document.getElementById('tagSelect').addEventListener('change', function() {
        if (this.value === 'add-new') {
            openModal('tagModal');
            this.value = "";
        }
    });

    window.onclick = function(event) {
        if (event.target.classList.contains('admin-modal')) {
            event.target.style.display = "none";
        }
    }

</script>

<!-- Link JS -->
<script src="assets/js/script.js"></script>

</html>
