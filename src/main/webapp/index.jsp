<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
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
</head>

<body>
    <!-- header -->
    <%@ include file="/common/header.jsp" %>

    <main class="main" style="background-color: #d9d9d9">
        <div class="cta">
            <div class="grid wide">
                <div class="row small-gutter">
                    <div class="col l-2 m-0 c-0">
                        <nav class="category">
                            <h2 class="category__heading">Danh mục</h2>
                            <ul class="category__list">
                                <c:forEach items="${parentCategories}" var="parent">
                                    <li class="category__item category__item--active">
                                        <a href="#!" class="category__link">${parent.name}</a>
                                        <c:if test="${not empty parent.children}">
                                            <ul class="category-menu">
                                                <c:forEach items="${parent.children}" var="child">
                                                    <li class="category-menu__item">
                                                        <a class="category-menu__link"
                                                           href="${pageContext.request.contextPath}/category?id=${child.id}">
                                                                ${child.name}
                                                        </a>
                                                    </li>
                                                </c:forEach>
                                            </ul>
                                        </c:if>
                                    </li>
                                </c:forEach>
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
                            <c:forEach items="${featuredProducts}" var="p">
                                <div class="product-card">
                                <a href="product?id=${p.id}">
                                    <img src="${p.image}" alt="${p.name}">
                                </a>

                                <a href="product?id=${p.id}">
                                    <p>${p.name}</p>
                                </a>

                                    <span class="price">
                                        <fmt:formatNumber value="${p.totalPrice}" type="number"/>đ
                                    </span>

                                <div class="bottom">
                                    <div class="star"><i class="fa-solid fa-star"></i> ${p.ratingAvg}</div>
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
                        <c:forEach items="${promotionProducts}" var="p">
                            <div class="product-card">
                                <a href="product?id=${p.id}"><img src="${p.image}" alt="${p.name}"></a>
                                <a href="product?id=${p.id}">
                                    <p>${p.name}</p>
                                </a>
                                <div class="price-discount">
                                    <div class="price-top">
                                        <span class="old-price"><fmt:formatNumber value="${p.firstPrice}" type="number"/>đ</span>
                                        <div class="discount-badge">Giảm ${p.discountPercent}%</div>
                                    </div>
                                    <div class="price-bottom">
                                        <span class="new-price"><fmt:formatNumber value="${p.totalPrice}" type="number"/>đ</span>
                                    </div>
                                </div>
                                <div class="bottom">
                                    <div class="star"><i class="fa-solid fa-star"></i>${p.ratingAvg}</div>
                                    <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu thích</button>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </section>

                <!-- Gợi ý cho bạn -->
                <section class="featured">
                    <h2>Gợi ý cho bạn</h2>
                    <button class="scroll-btn left"><i class="fa-solid fa-chevron-left"></i></button>
                    <button class="scroll-btn right"><i class="fa-solid fa-chevron-right"></i></button>
                    <div class="product-list">
                        <c:forEach items="${suggestedProducts}" var="p">
                            <div class="product-card">
                            <a href="product?id=${p.id}"><img src="${p.image}" alt="${p.name}"></a>
                            <a href="product?id=${p.id}">
                                <p>${p.name}</p>
                            </a>
                            <span class="price"><fmt:formatNumber value="${p.totalPrice}" type="number"/>đ</span>
                            <div class="bottom">
                                <div class="star"><i class="fa-solid fa-star"></i> ${p.ratingAvg}</div>
                                <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu thích</button>
                            </div>
                        </div>
                        </c:forEach>
                    </div>
                </section>
                <!-- Sản phẩm giới hạn -->
                <section class="featured">
                    <h2>Sản phẩm giới hạn</h2>
                    <button class="scroll-btn left"><i class="fa-solid fa-chevron-left"></i></button>
                    <button class="scroll-btn right"><i class="fa-solid fa-chevron-right"></i></button>
                    <div class="product-list">
                        <c:forEach items="${limitedProducts}" var="p">
                            <div class="product-card">
                                <a href="product?id=${p.id}"><img src="${p.image}" alt="${p.name}"></a>
                            <a href="product?id=${p.id}">
                                <p>${p.name}</p>
                            </a>
                            <div class="price-discount">
                                <div class="price-top">
                                    <span class="old-price"><fmt:formatNumber value="${p.firstPrice}" type="number"/>đ</span>
                                    <div class="discount-badge">Giảm ${p.discountPercent}%</div>
                                </div>
                                <div class="price-bottom">
                                    <span class="new-price"><fmt:formatNumber value="${p.totalPrice}" type="number"/>đ</span>
                                </div>
                            </div>
                            <div class="bottom">
                                <div class="star"><i class="fa-solid fa-star"></i> ${p.ratingAvg}</div>
                                <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu
                                    thích</button>
                            </div>
                        </div>
                        </c:forEach>
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
    <!-- Footer -->
    <jsp:include page="/common/footer.jsp" />
</body>

<!-- Link JS -->
<script src="assets/js/script.js"></script>

</html>

</html>