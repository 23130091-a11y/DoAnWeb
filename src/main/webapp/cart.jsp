<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Giỏ hàng</title>

    <!-- Reset CSS -->
    <link rel="stylesheet" href="assets/css/reset.css">
    <link rel="stylesheet" href="assets/css/grid.css">
    <link rel="stylesheet" href="assets/css/cart.css">
    <link rel="stylesheet" href="assets/css/base.css">
    <link rel="stylesheet" href="assets/css/style.css">

    <!-- Font -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300..800;1,300..800&family=Poppins:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
        rel="stylesheet">
    <!-- Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css"
        integrity="sha512-2SwdPD6INVrV/lHTZbO2nodKhrnDdJK9/kg2XD1r9uGqPo1cUbujc+IYdlYdEErWNu69gVcYgdxlmVmzTWnetw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>

<body>
    <!-- header -->
    <%@ include file="/common/header.jsp" %>

    <main class="main" style=" background-color: #ffff; padding: 20px 0;">
        <div class="grid wide">
            <div class="cart-container">
                <!-- Header -->
                <c:set var="cart" value="${sessionScope.cart}" />
                <div class="cart-header flex">
                    <div class="colum product-col">Sản phẩm</div>
                    <div class="colum price-col">Đơn giá</div>
                    <div class="colum qty-col">Số lượng</div>
                    <div class="colum total-col">Số tiền</div>
                    <div class="colum action-col">Thao tác</div>
                </div>
                <!-- cart list product theo ngày -->
                <c:forEach var="entry" items="${itemsByDate}">
                    <div class="shop-block">
                        <div class="shop-title flex">
                            <input type="checkbox" class="shop-checkbox">
                            <span class="date-add">${entry.key}</span>
                        </div>
                        <!-- Cart Items -->
                        <c:forEach var="item" items="${entry.value}">
                            <div class="cart-item flex">
                                <div class="colum product-col flex">
                                    <input type="checkbox" class="item-checkbox">
                                    <a><img src="${item.product.image}" alt="${item.product.name}"></a>
                                    <a>
                                        <div class="item-info">
                                            <p>${item.product.name}</p>
                                        </div>
                                    </a>
                                </div>
                                <div class="colum price-col">
                                    <div class="price-wrapper ">
                                        <div class="old-price-box">
                                            <span class="old-price">${item.originalPrice} đ</span>
                                            <div class="price-discount">Discount </div>
                                        </div>
                                        <div class="new-price-box">
                                            <div class="new-price-row">
                                                <span class="new-price">${item.discountPrice}</span>
                                                <span class="currency">đ</span>
                                            </div>
                                            <div class="price-note">Đã cập nhật</div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Quantity -->
                                <div class="colum qty-col item-qty">
                                    <button type="button">-</button>
                                    <input class="text" type="text" value="${item.quantity}">
                                    <button type="button">+</button>
                                </div>
                                <!-- Total -->
                                <span class="colum total-col">${item.totalPrice}
                                            <span class="currency">đ</span>
                                        </span>
                                <!-- Action -->
                                <div class="colum action-col">
                                    <a href="delete-cart?id=${item.product.id}" class="item-delete">Xóa</a>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </c:forEach>
                <!-- Footer -->
                <div class="cart-footer flex">
                    <input type="checkbox" class="select-all-footer"> Chọn tất cả
                    <button type="button" class="footer-btn">Xóa</button>
                    <button type="button" class="footer-btn">Lưu vào mục yêu thích</button>

                    <div class="cart-summary">
                        Tổng cộng (<span class="total-items">${cart.totalQuantity}</span> sản phẩm): <span class="total-price">${cart.totalPrice} đ</span>
                    </div>

                    <button type="button" class="buy-btn"
                            onclick="window.location.href='${pageContext.request.contextPath}/checkout'">
                      Thanh toán
                    </button>
                </div>
                <p class="empty-message">
                    Không có sản phẩm nào trong giỏ hàng
                </p>
            </div>

            <div class="featured-list">
                <section class="featured">
                    <h2>Có thể bạn cũng thích</h2>
                    <div class="list row small-gutter">
                        <div class="col l-3 m-4 c-6">
                            <div class="product-card">
                                <a><img src="assets/img/thuphatamthnah.png" alt=""></a>
                                <a>
                                    <p>Bộ thu phát âm thanh không dây truyền tín hiệu mạnh, kết nối đa thiết bị, Bộ thu
                                        phát
                                        âm
                                        thanh NFC BT200</p>
                                </a>
                                <div class="price-discount">
                                    <div class="price-top">
                                        <span class="old-price">500.000đ</span>
                                        <div class="discount-badge">Giảm 25%</div>
                                    </div>
                                    <div class="price-bottom">
                                        <span class="new-price">375.000đ</span>
                                    </div>
                                </div>
                                <div class="bottom">
                                    <div class="star"><i class="fa-solid fa-star"></i> 4.8</div>
                                    <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu thích</button>
                                </div>
                            </div>
                        </div>
                        <div class="col l-3 m-4 c-6">
                            <div class="product-card">
                                <a><img src="assets/img/fan.jpg" alt=""></a>
                                <a>
                                    <p>Quạt đôi mini xoay 360 độ 12V-24V tiện ích trên ô tô </p>
                                </a>
                                <span class="price">118.000đ</span>
                                <div class="bottom">
                                    <div class="star"><i class="fa-solid fa-star"></i> 5</div>
                                    <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu thích</button>
                                </div>
                            </div>
                        </div>
                        <div class="col l-3 m-4 c-6">
                            <div class="product-card">
                                <a><img src="assets/img/maylamtoc.png" alt=""></a>
                                <a>
                                    <p>Máy làm tóc đa năng 3 trong 1 uốn, là, ép kiểu Hàn Quốc, Màu đen</p>
                                </a>
                                <span class="price">266.000đ</span>
                                <div class="bottom">
                                    <div class="star"><i class="fa-solid fa-star"></i> 4.4</div>
                                    <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu thích</button>
                                </div>
                            </div>
                        </div>
                        <div class="col l-3 m-4 c-6">
                            <div class="product-card">
                                <a><img src="assets/img/ghe.jpg" alt=""></a>
                                <a>
                                    <p>Gối tựa lưng cao su non giúp thư giãn dành cho dân văn phòng, Màu đen</p>
                                </a>
                                <div class="price-discount">
                                    <div class="price-top">
                                        <span class="old-price">420.000đ</span>
                                        <div class="discount-badge">Giảm 15%</div>
                                    </div>
                                    <div class="price-bottom">
                                        <span class="new-price">375.000đ</span>
                                    </div>
                                </div>
                                <div class="bottom">
                                    <div class="star"><i class="fa-solid fa-star"></i> 5</div>
                                    <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu thích</button>
                                </div>
                            </div>
                        </div>
                        <div class="col l-3 m-4 c-6">
                            <div class="product-card">
                                <a><img src="assets/img/bochuyendoi.jpg" alt=""></a>
                                <a>
                                    <p>Bộ chuyển đổi CarPlay không dây 2in1 cho xe hơi hiện đại</p>
                                </a>
                                <div class="price-discount">
                                    <div class="price-top">
                                        <span class="old-price">385.000đ</span>
                                        <div class="discount-badge">Giảm 15%</div>
                                    </div>
                                    <div class="price-bottom">
                                        <span class="new-price">327.000đ</span>
                                    </div>
                                </div>
                                <div class="bottom">
                                    <div class="star"><i class="fa-solid fa-star"></i> 4.6</div>
                                    <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu thích</button>
                                </div>
                            </div>
                        </div>
                        <div class="col l-3 m-4 c-6">
                            <div class="product-card">
                                <a><img src="assets/img/denhoc.jpg" alt=""></a>
                                <a>
                                    <p>Đèn học chống cận cao cấp 3 chế độ sáng, bật tắt cảm ứng tiện lợi, Loại 6000mah
                                        (gồm
                                        cả
                                        củ sạc)</p>
                                </a>
                                <span class="price">187.000đ</span>
                                <div class="bottom">
                                    <div class="star"><i class="fa-solid fa-star"></i> 5</div>
                                    <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu thích</button>
                                </div>
                            </div>
                        </div>
                        <div class="col l-3 m-4 c-6">
                            <div class="product-card">
                                <a><img src="assets/img/tuirac.jpg" alt=""></a>
                                <a>
                                    <p>Combo 500 túi lọc rác bồn rửa bát chống tắc nghẽn tiện lợi</p>
                                </a>
                                <span class="price">154.000đ</span>
                                <div class="bottom">
                                    <div class="star"><i class="fa-solid fa-star"></i> 4.1</div>
                                    <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu thích</button>
                                </div>
                            </div>
                        </div>
                        <div class="col l-3 m-4 c-6">
                            <div class="product-card">
                                <a><img src="assets/img/micro.jpg" alt=""></a>
                                <a>
                                    <p>Micro không dây kèm loa bluetooth YS-69 bass mạnh hỗ trợ ghi âm cao cấp</p>
                                </a>
                                <span class="price">352.000đ</span>
                                <div class="bottom">
                                    <div class="star"><i class="fa-solid fa-star"></i> 3.6</div>
                                    <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu thích</button>
                                </div>
                            </div>
                        </div>
                        <div class="col l-3 m-4 c-6">
                            <div class="product-card">
                                <a><img src="assets/img/bochuyendoi.jpg" alt=""></a>
                                <a>
                                    <p>Bộ chuyển đổi CarPlay không dây 2in1 cho xe hơi hiện đại</p>
                                </a>
                                <div class="price-discount">
                                    <div class="price-top">
                                        <span class="old-price">385.000đ</span>
                                        <div class="discount-badge">Giảm 15%</div>
                                    </div>
                                    <div class="price-bottom">
                                        <span class="new-price">327.000đ</span>
                                    </div>
                                </div>
                                <div class="bottom">
                                    <div class="star"><i class="fa-solid fa-star"></i> 4.4</div>
                                    <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu thích</button>
                                </div>
                            </div>
                        </div>
                        <div class="col l-3 m-4 c-6">
                            <div class="product-card">
                                <a><img src="assets/img/chaixit.jpg" alt=""></a>
                                <a>
                                    <p>Chai xịt rệp giường, mạt bụi hiệu quả an toàn</p>
                                </a>
                                <div class="price-discount">
                                    <div class="price-top">
                                        <span class="old-price">185.000đ</span>
                                        <div class="discount-badge">Giảm 20%</div>
                                    </div>
                                    <div class="price-bottom">
                                        <span class="new-price">148.000đ</span>
                                    </div>
                                </div>
                                <div class="bottom">
                                    <div class="star"><i class="fa-solid fa-star"></i> 5</div>
                                    <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu thích</button>
                                </div>
                            </div>
                        </div>
                        <div class="col l-3 4 m-4 c-6">
                            <div class="product-card">
                                <a><img src="assets/img/quatsac.png" alt=""></a>
                                <a>
                                    <p>Quạt sạc mini pin trâu 20000mah hiện đại dùng được lâu dài
                                    </p>
                                </a>
                                <div class="price-discount">
                                    <div class="price-top">
                                        <span class="old-price">653.000đ</span>
                                        <div class="discount-badge">Giảm 20%</div>
                                    </div>
                                    <div class="price-bottom">
                                        <span class="new-price">522.000đ</span>
                                    </div>
                                </div>
                                <div class="bottom">
                                    <div class="star"><i class="fa-solid fa-star"></i> 4.8</div>
                                    <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu
                                        thích</button>
                                </div>
                            </div>
                        </div>
                        <div class="col l-3 m-4 c-6">
                            <div class="product-card">
                                <a><img src="assets/img/binhxit.png" alt=""></a>
                                <a>
                                    <p>Bình xịt diệt bọ rệp, mạt bụi thảo mộc thiên nhiên an toàn 330ml</p>
                                </a>
                                <span class="price">112.000đ</span>
                                <div class="bottom">
                                    <div class="star"><i class="fa-solid fa-star"></i> 3.9</div>
                                    <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu
                                        thích</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </main>
    <!-- Footer -->
    <jsp:include page="/common/footer.jsp" />
    <script src="assets/js/script.js"></script>
</body>

</html>