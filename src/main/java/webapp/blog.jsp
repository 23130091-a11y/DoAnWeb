<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hướng Dẫn Vệ Sinh Máy Giặt - WebGiaDung</title>

    <link rel="stylesheet" href="assets/css/reset.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300..800;1,300..800;1,300..800;1,300..800&family=Poppins:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
        integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="assets/css/grid.css">
    <link rel="stylesheet" href="assets/css/base.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/blog.css">
</head>

<body>
    <header id="header" class="header">
        <div class="grid wide">
            <div class="header-top">
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
                                <div class="navbar-notify navbar-notify--no-login">
                                    <img src="assets/img/no-login_img.png" alt="" class="navbar-notify__img">
                                    <span class="navbar-notify__message">Đăng nhập để xem thông báo</span>
                                </div>
                            </a>
                        </li>
                        <li class="navbar__item">
                            <i class="navbar__item-symbol fa-regular fa-circle-question"></i>
                            <a href="#!" class="navbar__link">Trợ giúp</a>
                        </li>
                        <li class="navbar__item navbar__item--strong-weight navbar__item--saparate">Đăng ký</li>
                        <li class="navbar__item navbar__item--strong-weight">Đăng nhập</li>
                    </ul>
                </nav>
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
                        <button class="header-search__btn btn btn--default-color">
                            <i class="header-search__icon fa-solid fa-magnifying-glass"></i>
                            <span class="header-search__text">Tìm kiếm</span>
                        </button>
                    </div>
                    <div class="header-cart">
                        <div class="header-cart__scale header-cart__scale--fade-product header-cart__scale--empty">
                            <a href="cart.jsp">
                                <i class="header-cart__icon fa-solid fa-cart-shopping"></i>
                            </a>
                            <span class="header-cart__notice">3</span>
                            <div class="cart-list cart-list--no-cart">
                                <img src="assets/img/no-cart_img.png" alt="" class="header-cart__img">
                                <span class="header-cart__msg">Chưa có sản phẩm</span>
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
        <div class="grid wide">
            <div class="row">
                <div class="col l-12 m-12 c-12">
                    <article class="blog-article">
                        <h1 class="blog-article__title">Hướng dẫn vệ sinh máy giặt đúng cách</h1>
                        <p class="blog-article__time">
                            <i class="fa-regular fa-clock"></i> 14/11/2025 • 10:30
                        </p>
                        <p class="blog-article__intro">
                            Máy giặt sử dụng lâu ngày không được vệ sinh đúng cách sẽ khiến máy giặt trở nên bẩn, bám
                            cặn, điều này vô tình làm cho quần áo khi giặt sẽ không còn sạch và có mùi khó chịu. Nếu máy
                            giặt nhà bạn có những dấu hiệu trên thì đã đến lúc để làm sạch máy giặt.
                        </p>

                        <img src="assets/img/maygiat1.jpg" alt="Thực hiện vệ sinh lồng máy giặt"
                             class="blog-article__img">

                        <h2 class="blog-article__subtitle">Bước 1: Làm sạch máy giặt</h2>
                        <p class="blog-article__content">
                            Để làm sạch trong lồng giặt kim loại, bạn cần dùng bột giặt được nghiền hoàn toàn.
                            <br>
                            Cách dùng:
                        </p>
                        <ul class="blog-article__list">
                            <li>Đổ bột giặt vào lồng giặt, sau đó chọn chu trình giặt với nước nóng để bột giặt tan hoàn
                                toàn trong lồng giặt.</li>
                            <li>Bấm nút khởi động và ngâm lồng giặt trong khoảng 15 – 20 phút.</li>
                            <li>Đổ hỗn hợp giặt vào và bấm nút khởi động máy lại như bình thường.</li>
                            <li>Sau khi quá trình giặt kết thúc, bạn dùng khăn mềm sạch lau khô lồng giặt.</li>
                        </ul>

                        <img src="assets/img/maygiat2.jpg" alt="Lau sạch bên trong lồng giặt"
                             class="blog-article__img">

                        <h2 class="blog-article__subtitle">Bước 2: Vệ sinh miếng lọc cặn trong lồng giặt</h2>
                        <p class="blog-article__content">
                            Miếng lọc cặn bẩn trong lồng giặt có vai trò giữ lại các cặn bẩn, xơ vải. Vệ sinh miếng lọc
                            thường xuyên để đảm bảo máy giặt hoạt động tốt và quần áo được giặt sạch.
                            <br>
                            Cách vệ sinh:
                        </p>
                        <ul class="blog-article__list">
                            <li>Tháo miếng lọc cặn (thường ở đáy lồng giặt) ra khỏi máy giặt.</li>
                            <li>Rửa sạch miếng lọc dưới vòi nước chảy.</li>
                            <li>Dùng bàn chải nhỏ hoặc tăm bông để làm sạch các khe hẹp trên miếng lọc.</li>
                            <li>Lau khô miếng lọc và lắp lại vào máy giặt.</li>
                        </ul>

                        <img src="assets/img/maygiat3.jpg" alt="Vệ sinh ngăn chứa bột giặt, nước xả"
                             class="blog-article__img">

                        <h2 class="blog-article__subtitle">Bước 3: Vệ sinh ngăn chứa bột giặt, nước xả</h2>
                        <p class="blog-article__content">
                            Ngăn chứa bột giặt, nước xả là nơi dễ bị bám bẩn và nấm mốc do tiếp xúc trực tiếp với hóa
                            chất và nước.
                            <br>
                            Cách vệ sinh:
                        </p>
                        <ul class="blog-article__list">
                            <li>Tháo ngăn chứa bột giặt, nước xả ra khỏi máy giặt.</li>
                            <li>Rửa sạch ngăn chứa dưới vòi nước chảy, dùng bàn chải nhỏ để làm sạch các góc khuất.</li>
                            <li>Có thể ngâm ngăn chứa trong dung dịch nước ấm pha giấm trắng hoặc baking soda khoảng 30
                                phút để loại bỏ cặn bẩn cứng đầu và mùi hôi.</li>
                            <li>Lau khô và lắp lại vào máy giặt.</li>
                        </ul>

                        <img src="assets/img/maygiat4.jpg" alt="Vệ sinh máy giặt cửa trước và gioăng cao su"
                             class="blog-article__img">

                        <h2 class="blog-article__subtitle">Lưu ý khi vệ sinh máy giặt cửa trước (Vệ sinh gioăng cao su)
                        </h2>
                        <p class="blog-article__content">
                            Đối với máy giặt cửa trước, khu vực gioăng cao su là nơi dễ đọng nước và tích tụ cặn bẩn,
                            nấm mốc.
                        </p>
                        <ul class="blog-article__list">
                            <li>Vệ sinh lồng: Cho một lượng nhỏ bột giặt hoặc dung dịch vệ sinh lồng giặt chuyên
                                dụng vào ngăn chứa. Chọn chu trình giặt nước nóng (nếu có) hoặc chu trình vệ sinh lồng
                                giặt (Tub Clean) và cho máy chạy không tải.</li>
                            <li>Sử dụng giấm/Baking Soda: Nếu máy không có chế độ nước nóng, bạn có thể đổ trực tiếp
                                2 chén giấm trắng hoặc 1/4 chén baking soda** vào lồng giặt và chạy chu trình giặt
                                thường với nước ấm. Dừng máy khoảng 1 giờ sau khi nước đã đầy để ngâm lồng giặt, sau
                                đó cho máy chạy tiếp.</li>
                            <li>Gioăng cao su: Dùng khăn mềm lau sạch **gioăng cao su cửa máy giặt và các khu vực
                                xung quanh. Hãy lật kỹ các nếp gấp của gioăng để loại bỏ hết cặn bẩn và nước đọng.</li>
                        </ul>

                        <div class="blog-article__source">
                            **Nguồn tham khảo: Được tổng hợp từ nhiều nguồn uy tín về mẹo vặt gia đình và vệ sinh
                            thiết bị gia dụng.
                        </div>

                        <section class="related-posts">
                            <h3 class="related-posts__heading">BÀI NÊN XEM THÊM</h3>
                            <div class="row small-gutter">
                                <div class="col c-4 m-4 l-4">
                                    <article class="blog-item">
                                        <a href="#!" class="blog-item__link">
                                            <img src="assets/img/blog-img-02.jpg" alt="Thực phẩm hút chân không"
                                                 class="blog-item__img">
                                        </a>
                                        <div class="blog-item__content">
                                            <h3>
                                                <a class="blog-item__title" href="#!">Lợi ích của việc bảo quản thực
                                                    phẩm...</a>
                                            </h3>
                                            <p class="blog-item__desc">
                                                Bảo quản thực phẩm lâu hơn: Đây là lợi ích đầu tiên mà của máy hút chân
                                                không mà chúng ta cần phải...
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
                                <div class="col c-4 m-4 l-4">
                                    <article class="blog-item">
                                        <a href="#!" class="blog-item__link">
                                            <img src="assets/img/blog-img-03.jpg" alt="Đèn bắt muỗi"
                                                 class="blog-item__img">
                                        </a>
                                        <div class="blog-item__content">
                                            <h3>
                                                <a class="blog-item__title" href="#!">Cách sử dụng đèn bắt muỗi...</a>
                                            </h3>
                                            <p class="blog-item__desc">
                                                Đèn bắt muỗi được các gia đình và nhiều người tin tưởng sử dụng. Sản
                                                phẩm không chỉ giúp tiêu diệt muỗi...
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
                                <div class="col c-4 m-4 l-4">
                                    <article class="blog-item">
                                        <a href="#!" class="blog-item__link">
                                            <img src="assets/img/blog-img-04.jpg" alt="Máy xay sinh tố"
                                                 class="blog-item__img">
                                        </a>
                                        <div class="blog-item__content">
                                            <h3>
                                                <a class="blog-item__title" href="#!">Vệ sinh và bảo quản máy xay...</a>
                                            </h3>
                                            <p class="blog-item__desc">
                                                Sau khi sử dụng, cần xoay đúng chiều để tháo cối ra. Vì có một số loại
                                                máy xay sinh tố phải xoay...
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
                            </div>
                        </section>

                    </article>
                </div>
            </div>
        </div>
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
    <script src="assets/js/script.js"></script>

</body>

</html>