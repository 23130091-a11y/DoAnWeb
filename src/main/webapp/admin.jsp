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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/reset.css">
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/grid.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/base.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/admin.css?v=33">
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
                        <h2 class="manage__heading">Cấu hình hệ thống</h2>

                        <div class="config-card">
                            <div class="config-card__header">
                                <div>
                                    <h3 class="config-title">Thiết lập cửa hàng</h3>
                                    <p class="config-subtitle">
                                        Cấu hình các thông tin hiển thị ngoài trang chủ, header/footer và các chế độ hệ thống.
                                    </p>
                                </div>
                            </div>

                            <!-- Lưu ý: hiện form này mới là UI. Khi bạn làm backend thì đổi action thành URL controller của bạn. -->
                            <form class="config-form-ui" method="post" action="#">
                                <!-- 1) THÔNG TIN CỬA HÀNG -->
                                <div class="config-block">
                                    <h4 class="config-block__title">Thông tin cửa hàng</h4>

                                    <div class="config-grid">
                                        <div class="config-field">
                                            <label class="config-label">Tên cửa hàng</label>
                                            <input class="config-input" type="text" name="storeName" placeholder="VD: WebGiaDung" />
                                        </div>

                                        <div class="config-field">
                                            <label class="config-label">Slogan</label>
                                            <input class="config-input" type="text" name="slogan" placeholder="VD: Đồ gia dụng chính hãng - Giá tốt" />
                                        </div>

                                        <div class="config-field">
                                            <label class="config-label">Hotline</label>
                                            <input class="config-input" type="text" name="hotline" placeholder="VD: 0909 000 000" />
                                        </div>

                                        <div class="config-field">
                                            <label class="config-label">Email hỗ trợ</label>
                                            <input class="config-input" type="email" name="email" placeholder="support@tenweb.com" />
                                        </div>

                                        <div class="config-field config-col-2">
                                            <label class="config-label">Địa chỉ cửa hàng</label>
                                            <input class="config-input" type="text" name="address" placeholder="Số nhà, đường, phường/xã, quận/huyện, tỉnh/thành" />
                                        </div>

                                        <div class="config-field">
                                            <label class="config-label">Giờ làm việc</label>
                                            <input class="config-input" type="text" name="openHours" placeholder="VD: 08:00 - 22:00 (T2 - CN)" />
                                        </div>

                                        <div class="config-field">
                                            <label class="config-label">Bản đồ (Google Map Embed link)</label>
                                            <input class="config-input" type="text" name="mapEmbed" placeholder="Dán link embed (nếu có)" />
                                        </div>

                                        <div class="config-field">
                                            <label class="config-label">Logo</label>
                                            <input class="config-input" type="file" name="logo" />
                                            <span class="config-note">Gợi ý: PNG nền trong.</span>
                                        </div>

                                        <div class="config-field">
                                            <label class="config-label">Favicon</label>
                                            <input class="config-input" type="file" name="favicon" />
                                            <span class="config-note">Gợi ý: 32x32, PNG/ICO.</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="config-divider-ui"></div>

                                <!-- 2) THÔNG TIN DOANH NGHIỆP -->
                                <div class="config-block">
                                    <h4 class="config-block__title">Thông tin doanh nghiệp</h4>

                                    <div class="config-grid">
                                        <div class="config-field">
                                            <label class="config-label">Tên công ty / Hộ kinh doanh</label>
                                            <input class="config-input" type="text" name="companyName" placeholder="VD: CÔNG TY TNHH ABC" />
                                        </div>

                                        <div class="config-field">
                                            <label class="config-label">Mã số thuế</label>
                                            <input class="config-input" type="text" name="taxCode" placeholder="VD: 031xxxxxxx" />
                                        </div>

                                        <div class="config-field">
                                            <label class="config-label">Người đại diện</label>
                                            <input class="config-input" type="text" name="legalRep" placeholder="VD: Nguyễn Văn A" />
                                        </div>

                                        <div class="config-field">
                                            <label class="config-label">Email nhận hóa đơn</label>
                                            <input class="config-input" type="email" name="invoiceEmail" placeholder="invoice@tenweb.com" />
                                        </div>

                                        <div class="config-field config-col-2">
                                            <label class="config-label">Chính sách đổi trả (ngắn)</label>
                                            <textarea class="config-input config-textarea" name="returnPolicy" placeholder="VD: Đổi trả trong 7 ngày nếu sản phẩm lỗi do NSX..."></textarea>
                                        </div>

                                        <div class="config-field config-col-2">
                                            <label class="config-label">Chính sách bảo hành (ngắn)</label>
                                            <textarea class="config-input config-textarea" name="warrantyPolicy" placeholder="VD: Bảo hành 12 tháng, hỗ trợ đổi mới trong 7 ngày..."></textarea>
                                        </div>
                                    </div>
                                </div>

                                <div class="config-divider-ui"></div>

                                <!-- 3) BÁN HÀNG & ĐƠN HÀNG -->
                                <div class="config-block">
                                    <h4 class="config-block__title">Bán hàng &amp; đơn hàng</h4>

                                    <div class="config-grid">
                                        <div class="config-field">
                                            <label class="config-label">VAT (%)</label>
                                            <input class="config-input" type="number" name="vatRate" min="0" max="20" step="0.5" placeholder="VD: 10" />
                                        </div>

                                        <div class="config-field">
                                            <label class="config-label">Cảnh báo tồn kho &lt;=</label>
                                            <input class="config-input" type="number" name="lowStockThreshold" min="0" step="1" placeholder="VD: 5" />
                                        </div>

                                        <div class="config-field">
                                            <label class="config-label">Tự hủy đơn chờ thanh toán (giờ)</label>
                                            <input class="config-input" type="number" name="autoCancelHours" min="0" step="1" placeholder="VD: 24" />
                                        </div>

                                        <div class="config-field">
                                            <label class="config-label">Cho phép mua không cần đăng nhập</label>
                                            <select class="config-input" name="guestCheckout">
                                                <option value="1">Bật</option>
                                                <option value="0">Tắt</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="config-toggles">
                                        <label class="toggle">
                                            <input type="checkbox" name="allowRegister" checked>
                                            <span class="toggle-ui"></span>
                                            <span class="toggle-text">
                                                <b>Cho phép đăng ký</b>
                                                <small>Bật/tắt chức năng tạo tài khoản.</small>
                                            </span>
                                        </label>

                                        <label class="toggle">
                                            <input type="checkbox" name="autoConfirmOrder">
                                            <span class="toggle-ui"></span>
                                            <span class="toggle-text">
                                                <b>Tự động xác nhận đơn</b>
                                                <small>Chỉ nên bật khi quy trình đã ổn định.</small>
                                            </span>
                                        </label>
                                    </div>
                                </div>

                                <div class="config-divider-ui"></div>

                                <!-- 4) THANH TOÁN & VẬN CHUYỂN -->
                                <div class="config-block">
                                    <h4 class="config-block__title">Thanh toán &amp; vận chuyển</h4>

                                    <div class="config-grid">
                                        <div class="config-field">
                                            <label class="config-label">Phí ship mặc định (VNĐ)</label>
                                            <input class="config-input" type="number" name="shippingFee" min="0" step="1000" placeholder="VD: 30000" />
                                        </div>

                                        <div class="config-field">
                                            <label class="config-label">Miễn phí ship từ (VNĐ)</label>
                                            <input class="config-input" type="number" name="freeShipFrom" min="0" step="1000" placeholder="VD: 399000" />
                                        </div>

                                        <div class="config-field config-col-2">
                                            <label class="config-label">Ghi chú vận chuyển</label>
                                            <input class="config-input" type="text" name="shippingNote" placeholder="VD: Giao hàng 1-3 ngày, nội thành nhanh hơn..." />
                                        </div>
                                    </div>

                                    <div class="config-toggles">
                                        <label class="toggle">
                                            <input type="checkbox" name="payCOD" checked>
                                            <span class="toggle-ui"></span>
                                            <span class="toggle-text">
                                                <b>Thanh toán COD</b>
                                                <small>Nhận hàng rồi thanh toán.</small>
                                            </span>
                                        </label>

                                        <label class="toggle">
                                            <input type="checkbox" name="payBank">
                                            <span class="toggle-ui"></span>
                                            <span class="toggle-text">
                                                <b>Chuyển khoản ngân hàng</b>
                                                <small>Hiển thị thông tin tài khoản khi đặt hàng.</small>
                                            </span>
                                        </label>

                                        <label class="toggle">
                                            <input type="checkbox" name="payOnline">
                                            <span class="toggle-ui"></span>
                                            <span class="toggle-text">
                                                <b>Thanh toán online</b>
                                                <small>VNPAY/Momo... (khi bạn tích hợp).</small>
                                            </span>
                                        </label>
                                    </div>
                                </div>

                                <div class="config-divider-ui"></div>

                                <!-- 5) SEO -->
                                <div class="config-block">
                                    <h4 class="config-block__title">SEO</h4>

                                    <div class="config-grid">
                                        <div class="config-field config-col-2">
                                            <label class="config-label">Meta title</label>
                                            <input class="config-input" type="text" name="metaTitle" placeholder="VD: Đồ gia dụng chính hãng | WebGiaDung" />
                                        </div>

                                        <div class="config-field config-col-2">
                                            <label class="config-label">Meta description</label>
                                            <textarea class="config-input config-textarea" name="metaDesc" placeholder="Mô tả ngắn cho Google (tầm 120-160 ký tự)"></textarea>
                                        </div>

                                        <div class="config-field">
                                            <label class="config-label">Google Analytics ID</label>
                                            <input class="config-input" type="text" name="gaId" placeholder="VD: G-XXXXXXXXXX" />
                                        </div>

                                        <div class="config-field">
                                            <label class="config-label">Google Tag Manager ID</label>
                                            <input class="config-input" type="text" name="gtmId" placeholder="VD: GTM-XXXXXXX" />
                                        </div>
                                    </div>
                                </div>

                                <div class="config-divider-ui"></div>

                                <!-- 6) GIAO DIỆN -->
                                <div class="config-block">
                                    <h4 class="config-block__title">Giao diện</h4>

                                    <div class="config-grid">
                                        <div class="config-field">
                                            <label class="config-label">Màu chính (primary)</label>
                                            <input class="config-input" type="text" name="primaryColor" placeholder="VD: #f6a500" />
                                        </div>

                                        <div class="config-field">
                                            <label class="config-label">Màu phụ (soft)</label>
                                            <input class="config-input" type="text" name="softColor" placeholder="VD: #E06A1C" />
                                        </div>
                                    </div>
                                </div>

                                <div class="config-divider-ui"></div>

                                <!-- 7) CHẾ ĐỘ HỆ THỐNG -->
                                <div class="config-block">
                                    <h4 class="config-block__title">Chế độ hệ thống</h4>

                                    <div class="config-toggles">
                                        <label class="toggle">
                                            <input type="checkbox" name="maintenance">
                                            <span class="toggle-ui"></span>
                                            <span class="toggle-text">
                                                <b>Bảo trì</b>
                                                <small>Khóa người dùng truy cập ngoài trang.</small>
                                            </span>
                                        </label>
                                    </div>

                                    <div class="config-grid" style="margin-top:12px;">
                                        <div class="config-field config-col-2">
                                            <label class="config-label">Thông báo bảo trì</label>
                                            <textarea class="config-input config-textarea" name="maintenanceMsg" placeholder="VD: Website đang bảo trì, vui lòng quay lại sau."></textarea>
                                        </div>
                                    </div>
                                </div>

                                <div class="config-actions-ui">
                                    <button type="submit" class="btn-ui btn-ui--primary">Lưu cấu hình</button>
                                    <button type="reset" class="btn-ui btn-ui--ghost">Đặt lại</button>
                                </div>
                            </form>
                        </div>
                    </section>
SD

                    <section id="customer" class="admin-section">
                        <div class="section-header">
                            <h2>Khách hàng</h2>

                            <!-- Search -->
                            <form class="customer-search" method="get" action="${pageContext.request.contextPath}/admin/customers">
                                <input type="text" name="q" placeholder="Tìm kiếm (tên/email/sđt)..." value="${param.q}">
                                <button type="submit">Tìm</button>
                            </form>
                        </div>

                        <div class="customer-table-wrap">
                            <table class="customer-table">
                                <thead>
                                <tr>
                                    <th>Avatar</th>
                                    <th>Tên</th>
                                    <th>Email</th>
                                    <th>Địa chỉ</th>
                                    <th>Xem</th>
                                    <th>Sửa</th>
                                    <th>Xóa</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:choose>
                                    <c:when test="${empty users}">
                                        <tr>
                                            <td colspan="7" style="text-align:center;padding:14px;">Không có khách hàng.</td>
                                        </tr>
                                    </c:when>
                                    <c:otherwise>
                                        <c:forEach var="u" items="${users}">
                                            <tr>
                                               <td>
                                                 <img class="customer-table__img customer-avatar"
                                                      src="${pageContext.request.contextPath}/${empty u.avatar ? 'assets/img/default-avatar.png' : u.avatar}"
                                                      alt="avatar"
                                                      onerror="this.src='${pageContext.request.contextPath}/assets/img/default-avatar.png'">
                                               </td>
                                                <td>${fn:escapeXml(u.name)}</td>
                                                <td>${fn:escapeXml(u.email)}</td>
                                                <td>${fn:escapeXml(u.address)}</td>

                                                <!-- Xem -->
                                                <td>
                                                    <button type="button"
                                                            class="customer-table__view"
                                                            data-id="${u.id}"
                                                            data-name="${fn:escapeXml(u.name)}"
                                                            data-email="${fn:escapeXml(u.email)}"
                                                            data-phone="${fn:escapeXml(u.phone)}"
                                                            data-address="${fn:escapeXml(u.address)}"
                                                            data-role="${u.role}"
                                                            data-status="${u.status}"
                                                            data-created="${u.createdAt}"
                                                            data-updated="${u.updatedAt}">
                                                        Xem
                                                    </button>
                                                </td>

                                                <!-- Sửa -->
                                                <td>
                                                    <button type="button"
                                                            class="customer-table__edit"
                                                            data-id="${u.id}"
                                                            data-name="${fn:escapeXml(u.name)}"
                                                            data-email="${fn:escapeXml(u.email)}"
                                                            data-phone="${fn:escapeXml(u.phone)}"
                                                            data-address="${fn:escapeXml(u.address)}"
                                                            data-role="${u.role}"
                                                            data-status="${u.status}">
                                                        Sửa
                                                    </button>
                                                </td>

                                                <!-- Xóa/Khóa -->
                                                <td>
                                                    <form method="post" action="${pageContext.request.contextPath}/admin/customers/delete"
                                                          onsubmit="return confirm('Khóa khách hàng này?');">
                                                        <input type="hidden" name="id" value="${u.id}">
                                                        <button type="submit" class="customer-table__delete">Xóa</button>
                                                    </form>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </c:otherwise>
                                </c:choose>
                                </tbody>
                            </table>
                        </div>

                        <!-- DETAIL -->


                        <!-- EDIT FORM -->

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
                                    <span class="value" id="customerDetailCreatedAt">-</span>
                                </div>

                                <div class="customer-detail__row">
                                   <span class="label">Ngày cập nhật:</span>
                                   <span class="value" id="customerDetailUpdatedAt">-</span>
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
                                <img src="${pageContext.request.contextPath}/assets/img/avatar4.jpg" alt="Avatar">
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
                                    <div class="news-table__cell"><img src="${pageContext.request.contextPath}/assets/img/hero_slide-01.jpg" class="news-table__img" alt=""></div>
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
                                    <div class="news-table__cell"><img src="${pageContext.request.contextPath}/assets/img/hero_slide-02.jpg" class="news-table__img" alt=""></div>
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
                                    <div class="news-table__cell"><img src="${pageContext.request.contextPath}/assets/img/blog1.jpg" class="news-table__img" alt=""></div>
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
                                    <div class="news-table__cell"><img src="${pageContext.request.contextPath}/assets/img/blog2.jpg" class="news-table__img" alt=""></div>
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
                                <img src="${pageContext.request.contextPath}/assets/img/hero_slide-01.jpg" alt="Slide Image">
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
                                <img src="${pageContext.request.contextPath}/assets/img/blog1.jpg" alt="Blog Image">
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
                                <img src="${pageContext.request.contextPath}/assets/img/slide1.jpg" alt="Slide Image">
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
                                <img src="${pageContext.request.contextPath}/assets/img/blog1.jpg" alt="Blog Image">
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

                    <section id="product" class="manage-detail" style="display:none;">
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
                                    <div class="product-search__wrapper">
                                        <input type="text" class="product-search__input" placeholder="Tìm tên sản phẩm hoặc từ khóa...">
                                        <button class="product-search__btn">
                                            <i class="fas fa-search"></i> Search
                                        </button>
                                    </div>
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
                                                <img src="${pageContext.request.contextPath}/assets/img/binhxit.png" alt="" class="product-table__img">
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
                                                <img src="${pageContext.request.contextPath}/assets/img/binhxit.png" alt="" class="product-table__img">
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
                                        <div class="event-table__cell event-col-post">Post</div>
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
                                        <div class="event-table__cell event-col-post"><input type="checkbox" checked></div>
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
                                        <div class="event-table__cell event-col-post"><input type="checkbox" checked></div>
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
                                                    <img src="${pageContext.request.contextPath}/assets/img/slide-main-thumb.png" alt="" class="event-option__img">
                                                    <div class="event-option__content">
                                                        <strong class="event-option__title">Slide chính</strong>
                                                        <span class="event-option__desc">- Banner lớn trang chủ (1200x400)</span>
                                                    </div>
                                                </div>
                                                <div class="event-option" data-value="home-sub">
                                                    <img src="${pageContext.request.contextPath}/assets/img/slide-sub-thumb.png" alt="" class="event-option__img">
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
                                                                <div class="col-img"><img src="${pageContext.request.contextPath}/assets/img/binhxit.png" alt=""></div>
                                                                <div class="col-name">Bình xịt bọt tuyết siêu sạch</div>
                                                                <div class="col-price">150.000đ</div>
                                                                <div class="col-cat">Gia dụng</div>
                                                            </div>
                                                            <div class="event-product-item">
                                                                <div class="col-check"><input type="checkbox" name="selectedProducts[]" value="102"></div>
                                                                <div class="col-img"><img src="${pageContext.request.contextPath}/assets/img/camera.png" alt=""></div>
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
                                            <td><img src="${pageContext.request.contextPath}/assets/img/binhxit.png" alt=""></td>
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
                                                    <img src="${pageContext.request.contextPath}/assets/img/slide-main-thumb.png" alt="" class="ev-slide-opt__img">
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
                                                    <img src="${pageContext.request.contextPath}/assets/img/slide-main-thumb.png" alt="" class="ev-slide-opt__img">
                                                    <div class="ev-slide-opt__content">
                                                        <strong class="ev-slide-opt__title">Slide chính</strong>
                                                        <span class="ev-slide-opt__desc">- Banner lớn trang chủ</span>
                                                    </div>
                                                </div>
                                                <div class="ev-slide-opt" data-value="home-sub">
                                                    <img src="${pageContext.request.contextPath}/assets/img/slide-sub-thumb.png" alt="" class="ev-slide-opt__img">
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
                                <button type="button" onclick="saveFullProduct()" class="product-table__save">
                                    <i class="fa-solid fa-floppy-disk"></i> Lưu sản phẩm
                                </button>
                            </div>

                            <div class="product-table__inner">
                                <form id="addProductFormInline"
                                      class="add-product-form"
                                      method="POST"
                                      action="api/add-product"
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
                                            <option value="">-- Đang tải dữ liệu... --</option>
                                            <option value="add-new">+ Thêm nhãn hiệu mới</option>
                                        </select>
                                    </div>

                                    <div class="add-product-form__field">
                                        <label class="add-product-form__label">Từ khóa (Tag):</label>
                                        <select name="tagID" class="add-product-form__input" id="tagSelect">
                                            <option value="">-- Đang tải dữ liệu... --</option>
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
                                            <img src="${pageContext.request.contextPath}/assets/img/binhxit.png" alt="Detail">
                                            <div class="view-detail-info">
                                                <h5>Tiêu đề chi tiết</h5>
                                                <p>Nội dung chi tiết đi kèm ảnh...</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="v-detailList" class="view-detail-grid">
                                        <div class="view-detail-card">
                                            <img src="${pageContext.request.contextPath}/assets/img/binhxit.png" alt="Detail">
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
                                                    <img src="${pageContext.request.contextPath}/assets/img/binhxit.png" alt="Detail">
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
                                                    <img src="${pageContext.request.contextPath}/assets/img/binhxit.png" alt="Detail">
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

                                            <!-- ===== TRẠNG THÁI ĐƠN HÀNG ===== -->
                                            <div class="order-table__cell">

                                                <!-- Hiển thị -->
                                                <span class="order-table__status ${order.statusTransportClass}">
                                                        ${order.statusTransportText}
                                                </span>

                                                <!-- Điều khiển -->
                                                <form action="<c:url value='order-update-status'/>"
                                                      method="post"
                                                      style="margin-top:6px">

                                                    <input type="hidden" name="orderId" value="${order.id}">
                                                    <input type="hidden" name="type" value="transport">

                                                    <select name="status"
                                                        ${order.status_transport == 1 || order.status_transport == 2
                                                                ? 'disabled' : ''}>

                                                        <option value="0"
                                                            ${order.status_transport == 0 ? 'selected' : ''}>
                                                            Đơn hàng mới
                                                        </option>

                                                        <option value="1"
                                                            ${order.status_transport == 1 ? 'selected' : ''}>
                                                            Hoàn thành
                                                        </option>

                                                        <option value="2"
                                                            ${order.status_transport == 2 ? 'selected' : ''}>
                                                            Hủy đơn
                                                        </option>

                                                    </select>

                                                    <button type="submit"
                                                            class="btn btn--default-color"
                                                        ${order.status_transport == 1 || order.status_transport == 2
                                                                ? 'disabled' : ''}>
                                                        Lưu
                                                    </button>
                                                </form>
                                            </div>


                                            <!-- ===== TRẠNG THÁI THANH TOÁN ===== -->
                                            <div class="order-table__cell">

                                                <!-- Hiển thị -->
                                                <span class="order-table__status ${order.statusPaymentClass}">
                                                        ${order.statusPaymentText}
                                                </span>

                                                <!-- Điều khiển -->
                                                <form action="<c:url value='order-update-status'/>"
                                                      method="post"
                                                      style="margin-top:6px">

                                                    <input type="hidden" name="orderId" value="${order.id}">
                                                    <input type="hidden" name="type" value="payment">

                                                    <select name="status"
                                                        ${order.status_payment == 1 ? 'disabled' : ''}>

                                                        <option value="0"
                                                            ${order.status_payment == 0 ? 'selected' : ''}>
                                                            Chưa thanh toán
                                                        </option>

                                                        <option value="1"
                                                            ${order.status_payment == 1 ? 'selected' : ''}>
                                                            Đã thanh toán
                                                        </option>

                                                    </select>

                                                    <button type="submit"
                                                            class="btn btn--default-color"
                                                        ${order.status_payment == 1 ? 'disabled' : ''}>
                                                        Lưu
                                                    </button>
                                                </form>
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
// Mở đúng tab theo controller
const serverTab = "${tab}"; // controller đang set "customers"

window.addEventListener("DOMContentLoaded", () => {
    if (!serverTab) return; // nếu không có tab thì thôi

    hideAllSections();

    if (serverTab === "customers") {
        sectionCustomer.style.display = "block";
    } else if (serverTab === "product") {
        sectionProduct.style.display = "block";
    } else if (serverTab === "order") {
        sectionOrder.style.display = "block";
    } else {
        sectionConfig.style.display = "block";
    }
});
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

    function saveNewBrand() {
        const form = document.getElementById('addBrandFormQuick');
        // Kiểm tra xem form có tồn tại không
        if(!form) return;

        const formData = new FormData(form);

        // Lưu ý: fetch phải trỏ đúng URL (thêm / nếu cần thiết)
        fetch('api/add-brands', {
            method: 'POST',
            body: formData // FormData tự động đặt Header là multipart/form-data
        })
            .then(response => {
                if (!response.ok) throw new Error("Mạng có vấn đề hoặc Server lỗi");
                return response.json();
            })
            .then(data => {
                // Kiểm tra đúng thuộc tính "status" trả về từ Java
                if (data.status === "success") {
                    const select = document.getElementById('brandSelect');
                    if (select) {
                        const newOption = new Option(data.brandName, data.brandID, true, true);
                        // Thêm vào trước option cuối cùng (thường là nút "Thêm mới...")
                        select.add(newOption, select.options[select.length - 1]);
                    }

                    closeModal('brandModal');
                    form.reset();
                    alert("Thêm nhãn hiệu thành công!");
                } else {
                    // Nếu Java trả về resultId <= 0, nó sẽ rơi vào đây
                    alert("Không thể lưu: " + data.message);
                }
            })
            .catch(error => {
                console.error('Error:', error);
                alert("Lỗi kết nối server!");
            });
    }
    // 2. Chức năng lưu Từ khóa (Tag/Keyword)
    function saveNewTag() {
        const tagName = document.getElementById('newTagName').value;
        const tagDesc = document.getElementById('newTagDesc').value;

        if (!tagName) {
            alert("Vui lòng nhập tên từ khóa");
            return;
        }

        // Gửi dữ liệu dưới dạng URLSearchParams hoặc JSON
        const params = new URLSearchParams();
        params.append('tagName', tagName);
        params.append('tagDesc', tagDesc);

        fetch('api/add-tag', {
            method: 'POST',
            headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
            body: params
        })
            .then(response => response.json())
            .then(data => {
                if (data.status === "success") {
                    // Thêm option mới vào select Tag và chọn nó
                    const select = document.getElementById('tagSelect');
                    const newOption = new Option(tagName, data.tagID, true, true);
                    select.add(newOption, select.options[select.length - 1]);

                    closeModal('tagModal');
                    document.getElementById('addTagFormQuick').reset();
                    alert("Thêm từ khóa thành công!");
                } else {
                    alert("Lỗi: " + data.message);
                }
            })
            .catch(error => console.error('Error:', error));
    }
    // --- QUẢN LÝ MÔ TẢ (DESCRIPTIONS) ---
    function addDescription() {
        const title = document.getElementById('descTitle').value;
        const content = document.getElementById('descContent').value;

        if (!title || !content) {
            alert("Vui lòng nhập đầy đủ tiêu đề và nội dung mô tả!");
            return;
        }

        const list = document.getElementById('descriptionList');
        const itemIdx = list.children.length;

        const html = '<div class="added-item" id="desc-item-' + itemIdx + '">' +
            '<span><strong>' + title + ':</strong> ' + content + '</span>' +
            '<input type="hidden" name="descTitles[]" value="' + title + '">' +
            '<input type="hidden" name="descContents[]" value="' + content + '">' +
            '<button type="button" onclick="removeItem(\'desc-item-' + itemIdx + '\')" class="btn-remove">Xóa</button>' +
            '</div>';
        list.insertAdjacentHTML('beforeend', html);

        // Xóa trống input sau khi thêm
        document.getElementById('descTitle').value = '';
        document.getElementById('descContent').value = '';
    }

    // --- QUẢN LÝ CHI TIẾT (DETAILS - CÓ ẢNH) ---
    function addDetail() {
        const fileInput = document.getElementById('detailImg');
        const title = document.getElementById('detailTitle').value;
        const content = document.getElementById('detailContent').value;

        if (!fileInput.files[0] || !title) {
            alert("Vui lòng chọn ảnh và nhập tiêu đề chi tiết!");
            return;
        }

        const list = document.getElementById('detailList');
        const itemIdx = list.children.length;

        // Tạo bản sao của file input để gửi đi (vì file input gốc sẽ bị xóa)
        const newFileInput = fileInput.cloneNode();
        newFileInput.style.display = 'none';
        newFileInput.name = "detImages[]";

        const html = `
    <div class="added-item" id="det-item-\${itemIdx}">
        <span><strong></strong> (Đã chọn ảnh)</span>
        <span><strong>\${title}:</strong> \${content}</span>
        <input type="hidden" name="detTitles[]" value="\${title}">
        <input type="hidden" name="detContents[]" value="\${content}">
        <button type="button" onclick="removeItem('det-item-\${itemIdx}')" class="btn-remove">Xóa</button>
    </div>
`;

        const wrapper = document.createElement('div');
        wrapper.innerHTML = html;
        const itemDiv = wrapper.firstElementChild;
        itemDiv.appendChild(newFileInput); // Chèn file vào div để submit cùng form
        list.appendChild(itemDiv);

        // Reset input
        fileInput.value = '';
        document.getElementById('detailTitle').value = '';
        document.getElementById('detailContent').value = '';
    }

    function removeItem(id) {
        document.getElementById(id).remove();
    }
    document.addEventListener("DOMContentLoaded", function() {
        // Lưu ý: bỏ dấu '/' ở đầu nếu file JS chạy từ trang cùng cấp thư mục api
        fetchData('/DoAnWeb/api/brands', 'brandSelect', '-- Chọn nhãn hiệu --');
        fetchData('/DoAnWeb/api/keywords', 'tagSelect', '-- Chọn từ khóa --');
    });

    function fetchData(url, selectId, defaultText) {
        const selectElem = document.getElementById(selectId);

        fetch(url)
            .then(response => {
                if (!response.ok) throw new Error('HTTP error! status: ' + response.status);
                return response.json();
            })
            .then(data => {
                // Xóa nội dung cũ (giữ lại option thêm mới nếu cần)
                selectElem.innerHTML = `<option value="">${defaultText}</option>`;

                data.forEach(item => {
                    let opt = document.createElement('option');
                    opt.value = item.id;
                    opt.textContent = item.name;
                    selectElem.appendChild(opt);
                });

                // Thêm lại nút thêm mới vào cuối
                let addNewOpt = document.createElement('option');
                addNewOpt.value = "add-new";
                addNewOpt.textContent = "+ Thêm mới";
                selectElem.appendChild(addNewOpt);
            })
            .catch(error => {
                console.error('Lỗi:', error);
                selectElem.innerHTML = `<option value="">Lỗi tải dữ liệu (404/500)</option>`;
            });
    }
    // Khai báo biến quill ở phạm vi global hoặc đảm bảo truy cập được trong hàm
    let quill;

    async function saveFullProduct() {
        const form = document.getElementById('addProductFormInline');
        if (!form || !form.reportValidity()) return;

        // 1. Thu thập ID từ các thẻ Select
        const brandID = document.getElementById('brandSelect').value;
        const tagID = document.getElementById('tagSelect').value;

        if (!brandID || brandID === 'add-new' || !tagID || tagID === 'add-new') {
            alert("Vui lòng chọn Nhãn hiệu và Từ khóa hợp lệ!");
            return;
        }

        // 2. Tạo đối tượng FormData từ Form chính
        const formData = new FormData(form);

        // 3. Xử lý logic Checkbox (1 nếu chọn, 0 nếu không)
        // Giả sử checkbox của bạn có id là 'postStatus' hoặc 'isPost'
        const postCheckbox = document.getElementById('postStatus'); // Thay ID tương ứng của bạn
        const isPostValue = (postCheckbox && postCheckbox.checked) ? "1" : "0";
        formData.set('postStatus', isPostValue);

        // 4. Ép ID Brand và Keyword vào dữ liệu gửi đi
        formData.set('brandID', brandID);
        formData.set('tagID', tagID);

        // 5. Lấy nội dung từ Quill Editor (Nếu bạn dùng mô tả dài)
        const editorContent = document.querySelector('#editor .ql-editor');
        if (editorContent) {
            formData.append('productFullDescription', editorContent.innerHTML);
        }

        // Gửi dữ liệu qua API
        console.log("Đang tiến hành lưu sản phẩm và dữ liệu liên quan...");

        try {
            const response = await fetch('/DoAnWeb/api/add-product', {
                method: 'POST',
                body: formData
            });

            const result = await response.json();

            if (result.status === "success") {
                alert("Lưu sản phẩm, mô tả và chi tiết thành công!");
                window.location.reload(); // Tải lại trang hoặc chuyển hướng
            } else {
                alert("Lỗi từ server: " + result.message);
            }
        } catch (error) {
            console.error("Chi tiết lỗi:", error);
            // Hiển thị thông báo cụ thể hơn thay vì chỉ "Không thể kết nối"
            alert("Lỗi hệ thống: " + error.message);
        }
    }
</script>

<!-- Link JS -->
<script src="${pageContext.request.contextPath}/assets/js/script.js"></script>
</html>