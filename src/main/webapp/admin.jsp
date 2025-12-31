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
                            <li class="manage-nav__item"><a href="#customer" class="manage-nav__link">Khách hàng</a></li>
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
                            <div class="news-search">
                                <input type="text" placeholder="Tìm kiếm..." class="news-search__input" id="searchSlide">
                            </div>

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
                                <article class="customer-table__row">
                                    <div class="customer-table__cell">
                                        <img src="assets/img/avatar4.jpg" class="customer-table__img" alt="">
                                    </div>

                                    <div class="customer-table__cell">
                                        <span class="customer-table__text">Nguyễn Văn A</span>
                                    </div>

                                    <div class="customer-table__cell">
                                        <span class="customer-table__text">vana@example.com</span>
                                    </div>

                                    <div class="customer-table__cell">
                                        <span class="customer-table__text">Hà Nội</span>
                                    </div>

                                    <div class="customer-table__cell">
                                        <button class="customer-table__view">Xem</button>
                                    </div>

                                    <div class="customer-table__cell">
                                        <button class="customer-table__edit">Sửa</button>
                                    </div>

                                    <div class="customer-table__cell">
                                        <button class="customer-table__delete">Xóa</button>
                                    </div>

                                </article>

                                <!-- Một khách hàng -->
                                <article class="customer-table__row">
                                    <div class="customer-table__cell">
                                        <img src="assets/img/avatar5.png" class="customer-table__img" alt="">
                                    </div>

                                    <div class="customer-table__cell">
                                        <span class="customer-table__text">Trần Thị B</span>
                                    </div>

                                    <div class="customer-table__cell">
                                        <span class="customer-table__text">tranb@example.com</span>
                                    </div>

                                    <div class="customer-table__cell">
                                        <span class="customer-table__text">TP. HCM</span>
                                    </div>

                                    <div class="customer-table__cell">
                                        <button class="customer-table__view">Xem</button>
                                    </div>

                                    <div class="customer-table__cell">
                                        <button class="customer-table__edit">Sửa</button>
                                    </div>

                                    <div class="customer-table__cell">
                                        <button class="customer-table__delete">Xóa</button>
                                    </div>

                                </article>

                            </div>
                        </div>
                    </section>
                    <!-- Chi tiết khách hàng -->
                    <section id="customer-detail" class="customer-detail hidden">
                        <h2 class="manage__heading">Chi tiết khách hàng</h2>

                        <div class="customer-detail__card">
                            <!-- Avatar -->
                            <div class="customer-detail__avatar">
                                <img src="assets/img/avatar5.png" alt="Avatar">
                                <span class="customer-detail__status online">Đang đăng nhập</span>
                                <!-- <span class="customer-detail__status offline">Đã đăng xuất</span> -->
                            </div>

                            <!-- Thông tin -->
                            <div class="customer-detail__info">
                                <div class="customer-detail__row">
                                    <span class="label">Tên:</span>
                                    <span class="value">Nguyễn Văn A</span>
                                </div>

                                <div class="customer-detail__row">
                                    <span class="label">Email:</span>
                                    <span class="value">vana@example.com</span>
                                </div>

                                <div class="customer-detail__row">
                                    <span class="label">Password:</span>
                                    <span class="value">********</span>
                                </div>

                                <div class="customer-detail__row">
                                    <span class="label">Số điện thoại:</span>
                                    <span class="value">0123 456 789</span>
                                </div>

                                <div class="customer-detail__row">
                                    <span class="label">Địa chỉ:</span>
                                    <span class="value">Hà Nội</span>
                                </div>

                                <div class="customer-detail__row">
                                    <span class="label">Ngày tạo:</span>
                                    <span class="value">01/12/2025</span>
                                </div>

                                <div class="customer-detail__row">
                                    <span class="label">Ngày cập nhật:</span>
                                    <span class="value">10/12/2025</span>
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
                            <form class="customer-detail__info" id="customerEditForm">
                                <div class="customer-detail__row">
                                    <label class="label">Tên:</label>
                                    <input type="text" class="input" value="Nguyễn Văn A">
                                </div>

                                <div class="customer-detail__row">
                                    <label class="label">Email:</label>
                                    <input type="email" class="input" value="vana@example.com">
                                </div>

                                <div class="customer-detail__row">
                                    <label class="label">Password:</label>
                                    <input type="password" class="input" placeholder="Nhập mật khẩu mới">
                                </div>

                                <div class="customer-detail__row">
                                    <label class="label">Số điện thoại:</label>
                                    <input type="text" class="input" value="0123 456 789">
                                </div>

                                <div class="customer-detail__row">
                                    <label class="label">Địa chỉ:</label>
                                    <input type="text" class="input" value="Hà Nội">
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

                    <section id="product" class="manage-detail">
                        <h2 class="manage__heading">Sản phẩm</h2>

                        <!-- Header bảng -->
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
                                    <div class="product-table__cell">Ngày tạo</div>
                                    <div class="product-table__cell">Ngày cập nhật</div>
                                    <div class="product-table__cell">Copy</div>
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
                                        <span class="product-table__text">20/11/2025</span>
                                    </div>

                                    <div class="product-table__cell">
                                        <span class="product-table__text">21/11/2025</span>
                                    </div>

                                    <div class="product-table__cell">
                                        <button class="product-table__edit">Copy</button>
                                    </div>

                                    <div class="product-table__cell">
                                        <button class="product-table__edit">Sửa</button>
                                    </div>

                                    <div class="product-table__cell">
                                        <button class="product-table__edit">Xóa</button>
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
                                        <span class="product-table__text">20/11/2025</span>
                                    </div>

                                    <div class="product-table__cell">
                                        <span class="product-table__text">21/11/2025</span>
                                    </div>

                                    <div class="product-table__cell">
                                        <button class="product-table__edit">Copy</button>
                                    </div>

                                    <div class="product-table__cell">
                                        <button class="product-table__edit">Sửa</button>
                                    </div>

                                    <div class="product-table__cell">
                                        <button class="product-table__edit">Xóa</button>
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
                                        <span class="product-table__text">20/11/2025</span>
                                    </div>

                                    <div class="product-table__cell">
                                        <span class="product-table__text">21/11/2025</span>
                                    </div>

                                    <div class="product-table__cell">
                                        <button class="product-table__edit">Copy</button>
                                    </div>

                                    <div class="product-table__cell">
                                        <button class="product-table__edit">Sửa</button>
                                    </div>

                                    <div class="product-table__cell">
                                        <button class="product-table__edit">Xóa</button>
                                    </div>

                                </article>
                            </div>
                        </div>
                    </section>

                    <section id="add-product" class="manage-detail" style="display:none;">
                        <h2 class="manage__heading">Thêm sản phẩm</h2>

                        <div class="product-table">
                            <div class="product-table__header">
                                <button type="submit" class="product-table__save">
                                    <i class="fa-solid fa-floppy-disk"></i>
                                </button>
                            </div>

                            <div class="product-table__inner">
                                <form id="addProductFormInline" class="add-product-form">

                                    <!-- Tên sản phẩm -->
                                    <div class="add-product-form__field">
                                        <label for="productNameInline" class="add-product-form__label">Tên sản phẩm:</label>
                                        <input type="text" id="productNameInline" name="productName" class="add-product-form__input" required>
                                    </div>

                                    <!-- Giá sản phẩm -->
                                    <div class="add-product-form__field">
                                        <label for="productPriceInline" class="add-product-form__label">Giá sản phẩm:</label>
                                        <input type="text" id="productPriceInline" name="productPrice" class="add-product-form__input" required>
                                    </div>

                                    <!-- Ảnh đại diện -->
                                    <div class="add-product-form__field">
                                        <label for="productImageInline" class="add-product-form__label">Ảnh đại diện:</label>
                                        <input type="file" id="productImageInline" name="productImage" class="add-product-form__input" accept="image/*" required>
                                    </div>

                                    <!-- Thư viện ảnh -->
                                    <div class="add-product-form__field">
                                        <label for="productGalleryInline" class="add-product-form__label">Thư viện ảnh:</label>
                                        <input type="file" id="productGalleryInline" name="productGallery[]" class="add-product-form__input" accept="image/*" multiple>
                                    </div>

                                    <!-- Mô tả sản phẩm -->
                                    <div class="add-product-form__field">
                                        <label for="productDescInline" class="add-product-form__label">Mô tả sản phẩm:</label>
                                        <!-- Create the editor container -->
                                        <div id="editor" style="min-height: 200px;"></div>
                                </form>
                            </div>
                        </div>
                    </section>

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
    }

    // Click menu
    menuLinks.forEach(link => {
        link.addEventListener("click", function(e) {
            e.preventDefault();
            const targetId = this.getAttribute("href").replace("#","");
            hideAllSections(); // ẩn tất cả trước
            if(targetId === "config") sectionConfig.style.display = "block";
            if(targetId === "product") sectionProduct.style.display = "block";
            if(targetId === "order") sectionOrder.style.display = "block";
            if (targetId === "customer") sectionCustomer.style.display = "block";
            if (targetId === "news") {
                showNewsDefault();
            }
        });
    });

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
    // SỬA KHÁCH HÀNG
    document.querySelectorAll(".customer-table__edit").forEach(btn => {
        btn.addEventListener("click", () => {
            hideAllSections();
            sectionCustomerEdit.style.display = "block";
            window.scrollTo({ top: 0, behavior: "smooth" });
        });
    });
    function hideCustomerEdit() {
        hideAllSections();
        sectionCustomer.style.display = "block";
        window.scrollTo({ top: 0, behavior: "smooth" });
    }
    // Ẩn tất cả section News
    function hideAllNewsSections() {
        Object.values(newsSections).forEach(sec => sec.style.display = "none");
        newsMenuButtons.forEach(btn => btn.classList.remove("active"));
    }

    // Mặc định show Slide khi vào News
    function showNewsDefault() {
        sectionNews.style.display = "block";
        hideAllNewsSections();
        newsSections["news-slide"].style.display = "block";
        document.querySelector(".news-menu__btn[data-target='news-slide']").classList.add("active");
    }

    // Click menu sidebar trong News
    newsMenuButtons.forEach(btn => {
        btn.addEventListener("click", () => {
            const targetId = btn.getAttribute("data-target");
            hideAllNewsSections();
            if(newsSections[targetId]) newsSections[targetId].style.display = "block";
            btn.classList.add("active");
        });
    });
    function hideAllDetailSections() {
        sectionSlideDetail.style.display = "none";
        sectionBlogDetail.style.display = "none";
        sectionSlideEdit.style.display = "none";
        sectionBlogEdit.style.display = "none";
    }
    // === Xem chi tiết Slide ===
    document.querySelectorAll("#news-slide .news-table__view").forEach(btn => {
        btn.addEventListener("click", () => {
            hideAllSections();
            hideAllDetailSections();
            sectionSlideDetail.style.display = "block";
            window.scrollTo({ top: 0, behavior: "smooth" });
        });
    });

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
            hideAllSections();          // ẩn toàn bộ layout khác
            hideAllNewsViews();         // ẩn giao diện news con

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
</script>

<!-- Link JS -->
<script src="assets/js/script.js"></script>

</html>
