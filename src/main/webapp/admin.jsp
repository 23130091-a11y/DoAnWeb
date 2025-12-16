<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 07/12/2025
  Time: 3:05 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
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
    <link rel="stylesheet" href="assets/css/admin.css">
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
                                <a href="#!" class="manage-nav__link">Tin tức</a>
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

                            <div class="order-table__header">
                                <h3 class="order-table__heading">Danh sách đơn hàng</h3>
                                <button class="btn btn--default-color order-table__btn">Xóa các mục đã chọn</button>
                            </div>

                            <!-- Filter -->
                            <div class="order-table__filter">
                                <div class="order-table__filter-label">
                                    Điều kiện lọc
                                    <i class="order-table__filter-icon fa-solid fa-caret-down"></i>
                                </div>

                                <input type="text"
                                       class="order-table__search"
                                       placeholder="Nhập từ khóa tìm kiếm">

                                <button class="btn btn--default-color order-table__search-btn">Tìm kiếm</button>
                            </div>

                            <!-- Table -->
                            <div class="order-table__inner">

                                <!-- Header -->
                                <div class="order-table__row">
                                    <div class="order-table__check">
                                        <input type="checkbox" class="order-table__checkbox">
                                    </div>

                                    <div class="order-table__cell">Mã</div>
                                    <div class="order-table__cell">Khách hàng</div>
                                    <div class="order-table__cell">Trạng thái</div>
                                    <div class="order-table__cell">Thanh toán</div>
                                    <div class="order-table__cell">Ngày tạo</div>
                                    <div class="order-table__cell">Tổng tiền</div>
                                </div>

                                <!-- Row -->
                                <article class="order-table__row">

                                    <div class="order-table__check">
                                        <input type="checkbox" class="order-table__checkbox">
                                    </div>

                                    <div class="order-table__cell">
                                        <a class="order-table__text order-table__link">#123456</a>
                                    </div>

                                    <div class="order-table__cell">
                                        <span class="order-table__text">anhaiti</span>
                                    </div>

                                    <div class="order-table__cell">
                                        <span class="order-table__status">Đơn hàng mới</span>
                                    </div>

                                    <div class="order-table__cell">
                                        <span class="order-table__payment order-table__payment--pending">Chưa thanh toán</span>
                                    </div>

                                    <div class="order-table__cell">
                                        <span class="order-table__date">30/11/2020</span>
                                    </div>

                                    <div class="order-table__cell">
                                        <span class="order-table__total">3.700.000đ</span>
                                    </div>

                                </article>

                                <!-- Row -->
                                <article class="order-table__row">

                                    <div class="order-table__check">
                                        <input type="checkbox" class="order-table__checkbox">
                                    </div>

                                    <div class="order-table__cell">
                                        <a class="order-table__text order-table__link">#123456</a>
                                    </div>

                                    <div class="order-table__cell">
                                        <span class="order-table__text">anhaiti</span>
                                    </div>

                                    <div class="order-table__cell">
                                        <span class="order-table__status order-table__status--completed">Hoàn thành</span>
                                    </div>

                                    <div class="order-table__cell">
                                        <span class="order-table__payment order-table__payment--pending">Chưa thanh toán</span>
                                    </div>

                                    <div class="order-table__cell">
                                        <span class="order-table__date">30/11/2020</span>
                                    </div>

                                    <div class="order-table__cell">
                                        <span class="order-table__total">3.700.000đ</span>
                                    </div>

                                </article>

                                <!-- Row -->
                                <article class="order-table__row order-table__row--cancelled">

                                    <div class="order-table__check">
                                        <input type="checkbox" class="order-table__checkbox">
                                    </div>

                                    <div class="order-table__cell">
                                        <a class="order-table__text order-table__link">#123456</a>
                                    </div>

                                    <div class="order-table__cell">
                                        <span class="order-table__text">anhaiti</span>
                                    </div>

                                    <div class="order-table__cell">
                                        <span class="order-table__status order-table__status--cancelled">Hủy đơn hàng</span>
                                    </div>

                                    <div class="order-table__cell">
                                        <span class="order-table__payment order-table__payment--paid">Đã thanh toán</span>
                                    </div>

                                    <div class="order-table__cell">
                                        <span class="order-table__date">30/11/2020</span>
                                    </div>

                                    <div class="order-table__cell">
                                        <span class="order-table__total">3.700.000đ</span>
                                    </div>

                                </article>
                            </div>
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
    const menuLinks = document.querySelectorAll(".manage-nav__link");
    const btnAdd = document.querySelector(".product-table__btn");

    // Hàm ẩn tất cả section
    function hideAllSections() {
        sectionProduct.style.display = "none";
        sectionAdd.style.display = "none";
        sectionOrder.style.display = "none";
        sectionConfig.style.display = "none";
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

</html>
