<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tên sản phẩm</title>

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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/product.css?v=99">
    <!-- Link favicon -->
</head>

<body>
    <!-- header -->
    <%@ include file="/common/header.jsp" %>

    <main class="main">
        <c:set var="product" value="${product}" />
        <!-- product-details -->
        <div class="product-details">
            <div class="grid wide">
                <div class="navigation nav-product">
                    <a href="<c:url value='/'/>" class="navigation__link">Trang chủ</a>
                    <c:forEach items="${parentCategories}" var="parent">
                        <i class="fa-solid fa-chevron-right"></i>
                        <a href="#!" class="navigation__link">${parent.name}</a>
                    </c:forEach>
                    <i class="fa-solid fa-chevron-right"></i>
                    <a href="#!" class="navigation__link">${category.name}</a>
                    <i class="fa-solid fa-chevron-right"></i>
                    <a href="#!" class="navigation__link--active">${product.name}</a>
                </div>

                <div class="product-details__inner">
                    <!-- Media Details -->
                    <figure class="media-details">
                        <img src="${pageContext.request.contextPath}/assets/img/products/${product.image}"  alt="${product.name}" class="media-details__img">

                    </figure>

                    <!-- Content Details -->
                    <div class="content-details">
                        <h1 class="content-details__heading">
                            ${product.name}
                        </h1>
                        <!-- Rating & Sold -->
                        <div class="content-details__review-wrap">
                            <div class="content-feedback">
                                <span class="content-feedback__level">${product.rating}</span>
                                <div class="rating">
                                    <c:forEach begin="1" end="5" var="i">
                                        <c:choose>
                                            <c:when test="${i <= product.ratingInt}">
                                                <i class="fa-solid fa-star rating__star rating__star--gold"></i>
                                            </c:when>
                                            <c:otherwise>
                                                <i class="fa-solid fa-star rating__star"></i>
                                            </c:otherwise>
                                        </c:choose>
                                    </c:forEach>
                                </div>
                            </div>
                            <div class="content-details__separate"></div>
                            <div class="content-sold">
                                <span class="content-sold__text">Đã bán</span>
                                <span class="content-feedback__level">${product.quantitySaled}</span>
                            </div>
                        </div>
                        <c:if test="${product.discountPercent > 0}">
                            <div class="content-details__desc-wrap">
                                <span class="content-details__desc">Giá gốc</span>
                                <span class="content-details__desc">
                                <fmt:formatNumber value="${product.firstPrice}" type="number"/> đ
                                  </span>
                            </div>

                            <div class="content-details__desc-wrap">
                                <span class="content-details__desc">Giảm</span>
                                <span class="content-details__desc">${product.discountPercent} %</span>
                            </div>
                        </c:if>
                        <div class="content-details__desc-wrap">
                            <span class="content-details__desc">Giá</span>
                            <span class="content-details__price"><fmt:formatNumber value="${product.totalPrice}" type="number"/> đ</span>
                        </div>
                        <c:if test="${not empty product.descriptionsList}">
                            <c:forEach items="${product.descriptionsList}" var="desc">
                                <div class="content-details__desc-wrap">
                                    <span class="content-details__desc"><strong>${desc.title}</strong></span>

                                    <span class="content-details__info">${desc.description}</span>
                                </div>
                            </c:forEach>
                        </c:if>
                       <%--
                        <!-- Attributes -->
                        <c:forEach items="${product.attributes}" var="attr">
                            <div class="content-details__desc-wrap">
                                <span class="content-details__desc">${attr.attrName}</span>
                                <span class="content-details__info">${attr.attrValue}</span>
                            </div>
                        </c:forEach>

                        <!-- Options -->
                        <c:if test="${not empty product.options}">
                            <div class="content-details__desc-wrap content-details__option">
                                <span class="content-details__desc">Tùy chọn</span>
                                <div class="group-option">
                                    <c:forEach items="${product.options}" var="opt">
                                        <label class="radio" for="opt${opt.id}">
                                            <input type="radio" name="type" id="opt${opt.id}" value="${opt.optionValue}" />
                                                ${opt.optionName}
                                        </label>
                                    </c:forEach>
                                </div>
                            </div>
                        </c:if>
                        --%>
                        <div class="content-details__desc-wrap content-details__option">
                            <span class="content-details__desc">Số lượng</span>
                            <div class="content-quantity">
                                <button class="content-quantity__btn content-quantity__btn--disable">-</button>
                                <span class="content-quantity__number">1</span>
                                <button class="content-quantity__btn">+</button>
                            </div>
                        </div>

                        <div class="content-details__act">
                            <button class="content-details__cart-btn btn"
                                    onclick="window.location.href='add-cart?productId=${product.id}&quantity=1'">
                                <i class="fa-solid fa-cart-plus content-details__cart-icon"></i>
                                Thêm vào giỏ hàng
                            </button>
                            <button class="content-details__buy btn btn--default-color"
                                onclick="window.location.href='${pageContext.request.contextPath}/checkout'">Mua ngay</button>
                        </div>

                        <div class="content-details__trp">
                            <span class="content-details__trp-text">Vận chuyển</span>
                            <a href="#!" class="content-details__trp-link">
                                <i class="fa-regular fa-truck content-details__trp-icon"></i>
                                Thời gian và phí giao hàng
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="product-desc">
            <div class="grid wide">
                <div class="row small-gutter product-desc__inner">
                    <div class="col l-9 m-12 c-12">
                        <div class="product-desc__content">
                            <c:if test="${not empty product.detailsList}">
                                <c:forEach items="${product.detailsList}" var="detail">
                                    <h2 class="product-desc__name">${detail.title}</h2>

                                    <p class="product-desc__text">${detail.description}
                                    </p>

                                    <figure class="product-desc__thumb">
                                        <img class="product-desc__img"
                                             src="${pageContext.request.contextPath}/assets/img/details/${detail.image}"
                                             alt="${detail.title}"
                                        />
                                    </figure>
                                </c:forEach>
                            </c:if>
                        </div>
                    </div>

                    <div class="col l-3 m-0 c-0">
                        <div class="product-desc__view-more">
                            <section class="product-propose">
                                <h2 class="section-title product-propose__heading">Đề xuất cho bạn</h2>
                                <article class="product-propose__item">
                                    <a href="#!">
                                        <img class="product-propose__img" src="assets/img/propose-01.jpg"
                                            alt="Máy xay đa năng cầm tay">
                                        <h3 class="product-propose__name">Máy xay đa năng cầm tay 6 lưỡi cối thủy tinh
                                            chịu nhiệt</h3>
                                    </a>
                                    <span class="product-propose__price">260.000đ</span>
                                </article>
                                <article class="product-propose__item">
                                    <a href="#!">
                                        <img class="product-propose__img" src="assets/img/propose-02.jpg"
                                            alt="Máy xay đa năng cầm tay">
                                        <h3 class="product-propose__name">Ấm siêu tốc 2 lớp bền đẹp Thái Lan công nghệ
                                            Inverter</h3>
                                    </a>
                                    <span class="product-propose__price">161.000đ</span>
                                </article>
                                <article class="product-propose__item">
                                    <a href="#!">
                                        <img class="product-propose__img" src="assets/img/propose-03.jpg"
                                            alt="Máy xay đa năng cầm tay">
                                        <h3 class="product-propose__name">Đèn bắt muỗi năng lượng mặt trời Đèn diệt muỗi
                                            điện tử LED</h3>
                                    </a>
                                    <span class="product-propose__price">265.000đ</span>
                                </article>
                            </section>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="product-feedback">
            <div class="grid wide">
                <div class="row small-gutter">
                    <div class="col l-9 m-12 c-12">
                        <div class="product-comment">
                            <h2 class="section-title product-comment__heading">Chia sẻ đánh giá của bạn</h2>
                            <div class="product-comment__vote">
                                <span class="product-comment__title">Đánh giá của bạn: </span>
                                <div class="rating">
                                    <i class="fa-solid fa-star rating__star rating__star--gold"></i>
                                    <i class="fa-solid fa-star rating__star rating__star--gold"></i>
                                    <i class="fa-solid fa-star rating__star rating__star--gold"></i>
                                    <i class="fa-solid fa-star rating__star rating__star--gold"></i>
                                    <i class="fa-solid fa-star rating__star rating__star--gold"></i>
                                </div>
                            </div>

                            <textarea class="product-comment__input" name="new_comment" id="new_comment" rows="4"
                                placeholder="Nhập câu hỏi / Bình luận / Nhận xét tại đây"></textarea>

                            <div class="product-comment__upload">
                                <label for="reviewImage" class="product-comment__upload-label">
                                    Upload ảnh đánh giá:
                                </label>

                                <input 
                                    type="file" 
                                    id="reviewImage" 
                                    name="reviewImage" 
                                    class="product-comment__upload-input"
                                    accept="image/*"
                                    multiple
                                >
                            </div>

                            <button class="product-comment__btn btn btn--default-color">Gửi đánh giá</button>
                        </div>

                        <div class="product-review">
                            <h2 class="section-title product-review__heading">Bình luận</h2>

                            <section class="product-review__item">
                                <figure class="product-review__avatar">
                                    <img class="avatar" src="assets/img/avatar1.jpg" alt="Avatar Trần Phương">
                                </figure>

                                <article class="product-review__content-wrapper">
                                    <h3 class="product-review__author">Trần Phương</h3>

                                    <div class="rating">
                                        <i class="fa-solid fa-star rating__star rating__star--gold"></i>
                                        <i class="fa-solid fa-star rating__star rating__star--gold"></i>
                                        <i class="fa-solid fa-star rating__star rating__star--gold"></i>
                                        <i class="fa-solid fa-star rating__star rating__star--gold"></i>
                                        <i class="fa-solid fa-star rating__star"></i>
                                    </div>
                                    <figure class="product-review__thumb">
                                        <img class="product-review__img"
                                            src="https://down-vn.img.susercontent.com/file/vn-11134103-7ra0g-m7onomgt8mr713@resize_w144_nl.webp"
                                            alt="Ảnh đánh giá sản phẩm">
                                        <img class="product-review__img"
                                            src="https://down-vn.img.susercontent.com/file/vn-11134103-7ra0g-m7onomgu3iyuf8@resize_w144_nl.webp"
                                            alt="Ảnh đánh giá sản phẩm">
                                    </figure>

                                    <p class="product-review__text">Lorem ipsum dolor sit amet.</p>
                                    <div class="product-review__info">
                                        <a href="#" class="product-review__reply">Trả lời</a>
                                        <div class="product-review__separate"></div>
                                        <time class="product-review__date" datetime="2025-07-05T02:59">05/07/2025
                                            02:59</time>
                                    </div>
                                </article>
                            </section>
                            <section class="product-review__item">
                                <figure class="product-review__avatar">
                                    <img class="avatar" src="assets/img/avatar2.jpg" alt="Avatar Văn Thảo">
                                </figure>

                                <article class="product-review__content-wrapper">
                                    <h3 class="product-review__author">Văn Thảo</h3>

                                    <div class="rating">
                                        <i class="fa-solid fa-star rating__star rating__star--gold"></i>
                                        <i class="fa-solid fa-star rating__star rating__star--gold"></i>
                                        <i class="fa-solid fa-star rating__star rating__star--gold"></i>
                                        <i class="fa-solid fa-star rating__star"></i>
                                        <i class="fa-solid fa-star rating__star"></i>
                                    </div>
                                    <figure class="product-review__thumb">
                                        <img class="product-review__img" class=""
                                            src="https://down-vn.img.susercontent.com/file/vn-11134103-7ras8-mca24hn81nekd6@resize_w144_nl.webp"
                                            alt="Ảnh đánh giá sản phẩm">
                                    </figure>

                                    <p class="product-review__text">Lorem ipsum dolor sit amet.</p>
                                    <div class="product-review__info">
                                        <a href="#" class="product-review__reply">Trả lời</a>
                                        <div class="product-review__separate"></div>
                                        <time class="product-review__date" datetime="2025-07-05T02:59">05/07/2025
                                            02:59</time>
                                    </div>
                                </article>
                            </section>
                            <section class="product-review__item">
                                <div class="product-review__avatar">
                                    <div class="avatar" style="--bg-color: #000339">S</div>
                                </div>

                                <article class="product-review__content-wrapper">
                                    <h3 class="product-review__author">Ngọc Sơn</h3>

                                    <div class="rating">
                                        <i class="fa-solid fa-star rating__star rating__star--gold"></i>
                                        <i class="fa-solid fa-star rating__star"></i>
                                        <i class="fa-solid fa-star rating__star"></i>
                                        <i class="fa-solid fa-star rating__star"></i>
                                        <i class="fa-solid fa-star rating__star"></i>
                                    </div>

                                    <p class="product-review__text">Lorem ipsum dolor sit amet.</p>
                                    <div class="product-review__info">
                                        <a href="#" class="product-review__reply">Trả lời</a>
                                        <div class="product-review__separate"></div>
                                        <time class="product-review__date" datetime="2025-07-05T02:59">05/07/2025
                                            02:59</time>
                                    </div>
                                </article>
                            </section>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <!-- Footer -->
    <jsp:include page="/common/footer.jsp" />
</body>

<script>
    document.addEventListener("DOMContentLoaded", function() {
        const quantityContainers = document.querySelectorAll(".content-quantity");

        quantityContainers.forEach(container => {
            const minusBtn = container.querySelector(".content-quantity__btn:first-child");
            const plusBtn = container.querySelector(".content-quantity__btn:last-child");
            const numberSpan = container.querySelector(".content-quantity__number");

            let quantity = parseInt(numberSpan.textContent);

            // Hàm update nút disable
            const updateButtons = () => {
                minusBtn.classList.toggle("content-quantity__btn--disable", quantity <= 1);
            }

            // Click +
            plusBtn.addEventListener("click", () => {
                quantity++;
                numberSpan.textContent = quantity;
                updateButtons();
            });

            // Click -
            minusBtn.addEventListener("click", () => {
                if (quantity > 1) {
                    quantity--;
                    numberSpan.textContent = quantity;
                    updateButtons();
                }
            });

            updateButtons(); // khởi tạo trạng thái nút
        });
    });
</script>

<!-- Link JS -->
<script src="assets/js/script.js"></script>

</html>