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
                            <button type="button" class="content-details__cart-btn btn"
                                    onclick="addToCart(${product.id})">
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
                        <div class="product-comment" id="reviews">
                            <h2 class="section-title product-comment__heading">Chia sẻ đánh giá của bạn</h2>

                            <c:choose>
                                <%-- CHƯA ĐĂNG NHẬP: chỉ hiện nút login --%>
                                <c:when test="${empty sessionScope.user}">
                                    <p style="margin:12px 0;">
                                        Bạn cần <b>đăng nhập</b> để gửi đánh giá.
                                    </p>

                                    <c:url var="loginUrl" value="/login">
                                        <c:param name="redirect" value="/product?id=${product.id}#reviews"/>
                                    </c:url>

                                    <a class="btn btn--default-color"
                                       href="${pageContext.request.contextPath}/login?redirect=/product?id=${product.id}%23reviews">
                                       Đăng nhập để đánh giá
                                    </a>
                                </c:when>

                                <%-- ĐÃ ĐĂNG NHẬP: hiện form gửi review --%>
                                <c:otherwise>
                                    <form action="${pageContext.request.contextPath}/review" method="post">
                                        <input type="hidden" name="productId" value="${product.id}" />
                                        <input type="hidden" name="rating" id="ratingValue" value="5" />

                                        <div class="product-comment__vote">
                                            <span class="product-comment__title">Đánh giá của bạn: </span>
                                            <div class="rating" id="ratingStars" style="cursor:pointer;">
                                                <i class="fa-solid fa-star rating__star rating__star--gold" data-val="1"></i>
                                                <i class="fa-solid fa-star rating__star rating__star--gold" data-val="2"></i>
                                                <i class="fa-solid fa-star rating__star rating__star--gold" data-val="3"></i>
                                                <i class="fa-solid fa-star rating__star rating__star--gold" data-val="4"></i>
                                                <i class="fa-solid fa-star rating__star rating__star--gold" data-val="5"></i>
                                            </div>
                                        </div>

                                        <%-- đổi name từ new_comment -> comment để controller nhận --%>
                                        <textarea class="product-comment__input" name="comment" id="new_comment" rows="4"
                                                  placeholder="Nhập câu hỏi / Bình luận / Nhận xét tại đây" required></textarea>

                                        <%-- Upload ảnh: tạm thời giữ UI, chưa lưu DB (để sau) --%>
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
                                                    disabled
                                            >
                                            <small style="display:block;margin-top:6px;opacity:.7">
                                                (Tạm thời chưa lưu ảnh, chỉ lưu nội dung + sao)
                                            </small>
                                        </div>

                                        <button type="submit" class="product-comment__btn btn btn--default-color">Gửi đánh giá</button>
                                    </form>
                                </c:otherwise>
                            </c:choose>
                        </div>


                        <div class="product-review">
                            <h2 class="section-title product-review__heading">Bình luận</h2>

                            <c:if test="${empty reviews}">
                                <p style="margin:12px 0;">Chưa có đánh giá nào cho sản phẩm này.</p>
                            </c:if>

                            <c:forEach var="rv" items="${reviews}">
                                <section class="product-review__item">
                                    <figure class="product-review__avatar">
                                        <img class="avatar" src="assets/img/avatar1.jpg" alt="Avatar">
                                    </figure>

                                    <article class="product-review__content-wrapper">
                                        <h3 class="product-review__author">${rv.authorName}</h3>

                                        <div class="rating">
                                            <c:forEach var="i" begin="1" end="5">
                                                <i class="fa-solid fa-star rating__star ${i <= rv.rating ? 'rating__star--gold' : ''}"></i>
                                            </c:forEach>
                                        </div>

                                        <p class="product-review__text">${rv.comment}</p>

                                        <div class="product-review__info">
                                            <time class="product-review__date">${rv.createdAt}</time>
                                        </div>
                                    </article>
                                </section>
                            </c:forEach>
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

    function addToCart(productId) {
        const contextPath = '${pageContext.request.contextPath}';
        const url = contextPath + '/add-cart?productId=' + productId + '&quantity=1';

        fetch(url)
            .then(response => {
                if (response.status === 401) {
                    alert("Vui lòng đăng nhập để thêm vào giỏ hàng!");
                    window.location.href = contextPath + '/login';
                    return;
                }
                if (response.ok) return response.json();
            })
            .then(data => {
                if (data && data.status === 'success') {
                    // 1. Sửa lại class cho đúng với HTML (header-cart__notice)
                    const cartNotice = document.querySelector('.header-cart__notice');
                    if (cartNotice) {
                        cartNotice.innerText = data.cartQty;
                    }

                    alert("Đã thêm sản phẩm vào giỏ hàng!");

                    /** * 2. Giải quyết vấn đề Dropdown không cập nhật:
                     * Vì nội dung dropdown được render bằng JSTL (Server-side),
                     * AJAX không thể tự chèn thêm thẻ <li> vào đó một cách dễ dàng.
                     * Cách đơn giản và hiệu quả nhất lúc này:
                     */
                    const cartList = document.querySelector('.cart-list');
                    // Nếu giỏ hàng đang hiện "Chưa có sản phẩm" (no-cart), ta reload để lấy HTML mới
                    if (cartList.querySelector('.cart-list--no-cart')) {
                        location.reload();
                    } else {
                        // Nếu đã có sản phẩm rồi, chỉ cần báo thành công là đủ,
                        // khách hàng nhấn vào icon giỏ hàng hoặc sang trang khác sẽ thấy đủ.
                        // Hoặc bạn có thể dùng location.reload() cho mọi trường hợp để đảm bảo dropdown luôn khớp.
                        location.reload();
                    }
                }
            })
            .catch(err => console.error("Lỗi:", err));
    }
</script>
<script>
(function () {
  const stars = document.querySelectorAll('#ratingStars .rating__star');
  const input = document.getElementById('ratingValue');

  function paint(val) {
    stars.forEach(s => {
      const v = Number(s.dataset.val);
      if (v <= val) s.classList.add('rating__star--gold');
      else s.classList.remove('rating__star--gold');
    });
  }

  // click chọn sao
  stars.forEach(s => {
    s.addEventListener('click', () => {
      const val = Number(s.dataset.val);
      input.value = val;
      paint(val);
    });

    // hover preview (tuỳ chọn)
    s.addEventListener('mouseenter', () => paint(Number(s.dataset.val)));
  });

  // rời chuột -> vẽ lại theo giá trị đã chọn
  const wrap = document.getElementById('ratingStars');
  wrap.addEventListener('mouseleave', () => paint(Number(input.value) || 5));

  // mặc định 5 sao
  paint(Number(input.value) || 5);
})();
</script>
<!-- Link JS -->
<script src="assets/js/script.js"></script>

</html>