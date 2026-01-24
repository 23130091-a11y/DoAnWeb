<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Slide</title>

    <!-- Reset CSS -->
    <link rel="stylesheet" href="assets/css/reset.css">
    <link rel="stylesheet" href="assets/css/slide.css">
    <link rel="stylesheet" href="assets/css/grid.css">
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

    <main class="main" style="background-color: #ffff; ">
        <div class="grid wide">
            <div class="image-sale">
                <img class="logo__img" src="assets/img/hero_slide-01.jpg">
            </div>
            <div class="slide-content">
                <div class="head-content">
                    <p class="title">Giảm đến 49%</p>
                    <p class="time">Thời gian: 20/11 - 25/11</p>
                    <p class="apply">Giảm tối đa 1.000.000đ</p>
                    <p class="note">Đơn tối thiểu 100.000đ</p>
                </div>
                <div class="slide-wrapper">
                    <div class="slide-list-product row small-gutter">
                        <div class="col l-2-4 m-4 c-6">
                            <div class="product-card">
                                <a><img src="assets/img/leucamtrai.jpg" alt=""></a>
                                <a>
                                    <p>Lều cắm trại tự bung dành cho 1-3 người chống thấm nước, chống nắng, Màu xanh
                                        dương</p>
                                </a>
                                <div class="price-discount">
                                    <div class="price-top">
                                        <span class="old-price">425.000đ</span>
                                        <div class="discount-badge">Giảm 49%</div>
                                    </div>
                                    <div class="price-bottom">
                                        <span class="new-price">216.000đ</span>
                                    </div>
                                </div>
                                <div class="bottom">
                                    <div class="star"><i class="fa-solid fa-star"></i> 4.2</div>
                                    <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu thích</button>
                                </div>
                            </div>
                        </div>
                        <div class="col l-2-4 m-4 c-6">
                            <div class="product-card">
                                <a><img src="assets/img/kinhvienthi.jpg" alt=""></a>
                                <a>
                                    <p>Kính viễn thị gấp gọn cao cấp kèm hộp đựng, Loại 2.0 độ</p>
                                </a>
                                <div class="price-discount">
                                    <div class="price-top">
                                        <span class="old-price">300.000đ</span>
                                        <div class="discount-badge">Giảm 49%</div>
                                    </div>
                                    <div class="price-bottom">
                                        <span class="new-price">153.000đ</span>
                                    </div>
                                </div>
                                <div class="bottom">
                                    <div class="star"><i class="fa-solid fa-star"></i> 4.2</div>
                                    <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu thích</button>
                                </div>
                            </div>
                        </div>
                        <div class="col l-2-4 m-4 c-6">
                            <div class="product-card">
                                <a><img src="assets/img/khoatayga.jpg" alt=""></a>
                                <a>
                                    <p>Khóa tay ga khóa phanh Capslock chống trộm xe máy, Màu đỏ</p>
                                </a>
                                <div class="price-discount">
                                    <div class="price-top">
                                        <span class="old-price">290.000đ</span>
                                        <div class="discount-badge">Giảm 49%</div>
                                    </div>
                                    <div class="price-bottom">
                                        <span class="new-price">148.000đ</span>
                                    </div>
                                </div>
                                <div class="bottom">
                                    <div class="star"><i class="fa-solid fa-star"></i> 4.2</div>
                                    <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu thích</button>
                                </div>
                            </div>
                        </div>
                        <div class="col l-2-4 m-4 c-6">
                            <div class="product-card">
                                <a><img src="assets/img/bodieukhien.jpg" alt=""></a>
                                <a>
                                    <p>Điều khiển cửa cuốn thông minh sóng 433 mhz siêu bền</p>
                                </a>
                                <div class="price-discount">
                                    <div class="price-top">
                                        <span class="old-price">218.000đ</span>
                                        <div class="discount-badge">Giảm 49%</div>
                                    </div>
                                    <div class="price-bottom">
                                        <span class="new-price">111.000đ</span>
                                    </div>
                                </div>
                                <div class="bottom">
                                    <div class="star"><i class="fa-solid fa-star"></i> 4.2</div>
                                    <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu thích</button>
                                </div>
                            </div>
                        </div>
                        <div class="col l-2-4 m-4 c-6">
                            <div class="product-card">
                                <a><img src="assets/img/denbatmuoi.jpg" alt=""></a>
                                <a>
                                    <p>Đèn bắt muỗi hình tháp có lưới bảo vệ an toàn</p>
                                </a>
                                <div class="price-discount">
                                    <div class="price-top">
                                        <span class="old-price">389.000đ</span>
                                        <div class="discount-badge">Giảm 49%</div>
                                    </div>
                                    <div class="price-bottom">
                                        <span class="new-price">198.000đ</span>
                                    </div>
                                </div>
                                <div class="bottom">
                                    <div class="star"><i class="fa-solid fa-star"></i> 4.2</div>
                                    <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu thích</button>
                                </div>
                            </div>
                        </div>
                        <div class="col l-2-4 m-4 c-6">
                            <div class="product-card">
                                <a><img src="assets/img/xaytieu.jpg" alt=""></a>
                                <a>
                                    <p>Dụng cụ xay tiêu vặn tay thủy tinh nhỏ gọn</p>
                                </a>
                                <div class="price-discount">
                                    <div class="price-top">
                                        <span class="old-price">150.000đ</span>
                                        <div class="discount-badge">Giảm 49%</div>
                                    </div>
                                    <div class="price-bottom">
                                        <span class="new-price">76.000đ</span>
                                    </div>
                                </div>
                                <div class="bottom">
                                    <div class="star"><i class="fa-solid fa-star"></i> 4.2</div>
                                    <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu thích</button>
                                </div>
                            </div>
                        </div>
                        <div class="col l-2-4 m-4 c-6">
                            <div class="product-card">
                                <a><img src="assets/img/set30nut.jpg" alt=""></a>
                                <a>
                                    <p>Set 30 nút bịt ổ điện chống giật an toàn cho bé, 2 chân</p>
                                </a>
                                <div class="price-discount">
                                    <div class="price-top">
                                        <span class="old-price">210.000đ</span>
                                        <div class="discount-badge">Giảm 49%</div>
                                    </div>
                                    <div class="price-bottom">
                                        <span class="new-price">107.000đ</span>
                                    </div>
                                </div>
                                <div class="bottom">
                                    <div class="star"><i class="fa-solid fa-star"></i> 4.2</div>
                                    <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu thích</button>
                                </div>
                            </div>
                        </div>
                        <div class="col l-2-4 m-4 c-6">
                            <div class="product-card">
                                <a><img src="assets/img/voisen.jpg" alt=""></a>
                                <a>
                                    <p>Vòi sen hợp kim nhôm tăng áp siêu mạnh , Vòi hoa sen không dây</p>
                                </a>
                                <div class="price-discount">
                                    <div class="price-top">
                                        <span class="old-price">420.000đ</span>
                                        <div class="discount-badge">Giảm 49%</div>
                                    </div>
                                    <div class="price-bottom">
                                        <span class="new-price">214.000đ</span>
                                    </div>
                                </div>
                                <div class="bottom">
                                    <div class="star"><i class="fa-solid fa-star"></i> 4.2</div>
                                    <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu thích</button>
                                </div>
                            </div>
                        </div>
                        <div class="col l-2-4 m-4 c-6">
                            <div class="product-card">
                                <a><img src="assets/img/ketreoquanao.jpg" alt=""></a>
                                <a>
                                    <p>Kệ treo quần áo chữ A khung kim loại có bánh xe di chuyển, Màu trắng</p>
                                </a>
                                <div class="price-discount">
                                    <div class="price-top">
                                        <span class="old-price">360.000đ</span>
                                        <div class="discount-badge">Giảm 49%</div>
                                    </div>
                                    <div class="price-bottom">
                                        <span class="new-price">183.000đ</span>
                                    </div>
                                </div>
                                <div class="bottom">
                                    <div class="star"><i class="fa-solid fa-star"></i> 4.2</div>
                                    <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu thích</button>
                                </div>
                            </div>
                        </div>
                        <div class="col l-2-4 m-4 c-6">
                            <div class="product-card">
                                <a><img src="assets/img/hopcomdien.jpg" alt=""></a>
                                <a>
                                    <p>Hộp cơm cắm điện 2 tầng 4 ngăn hâm nóng nhanh chóng</p>
                                </a>
                                <div class="price-discount">
                                    <div class="price-top">
                                        <span class="old-price">354.000đ</span>
                                        <div class="discount-badge">Giảm 49%</div>
                                    </div>
                                    <div class="price-bottom">
                                        <span class="new-price">180.000đ</span>
                                    </div>
                                </div>
                                <div class="bottom">
                                    <div class="star"><i class="fa-solid fa-star"></i> 4.2</div>
                                    <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu thích</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <button class="button-view">
                        <i class="fa-solid fa-chevron-down"></i>
                    </button>
                </div>
                <div class="head-content">
                    <p class="title">Giảm đến 20%</p>
                    <p class="time">Thời gian: 20/11 - 30/11</p>
                    <p class="apply">Giảm tối đa 500.000đ</p>
                    <p class="note">Đơn tối thiểu 0đ</p>
                </div>
                <div class="slide-wrapper">
                    <div class="slide-list-product row small-gutter">
                        <div class="col l-2-4 m-4 c-6">
                            <div class="product-card">
                                <a><img src="assets/img/khan.jpg" alt=""></a>
                                <a>
                                    <p>Khăn lau xe ô tô chuyên dụng mềm mịn và thấm hút tốt, Loại 35cm x 35cm</p>
                                </a>
                                <div class="price-discount">
                                    <div class="price-top">
                                        <span class="old-price">418.000đ</span>
                                        <div class="discount-badge">Giảm 20%</div>
                                    </div>
                                    <div class="price-bottom">
                                        <span class="new-price">335.000đ</span>
                                    </div>
                                </div>
                                <div class="bottom">
                                    <div class="star"><i class="fa-solid fa-star"></i> 4.2</div>
                                    <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu thích</button>
                                </div>
                            </div>
                        </div>
                        <div class="col l-2-4 m-4 c-6">
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
                                    <div class="star"><i class="fa-solid fa-star"></i> 4.4</div>
                                    <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu thích</button>
                                </div>
                            </div>
                        </div>
                        <div class="col l-2-4 m-4 c-6">
                            <div class="product-card">
                                <a><img src="assets/img/giado.jpg" alt=""></a>
                                <a>
                                    <p>Giá đỡ chuyển đổi máy cầm tay thành máy bàn chuyên dụng, đa năng và an toàn khi
                                        thao
                                        tác
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
                                <div class="bottom">
                                    <div class="star"><i class="fa-solid fa-star"></i> 3.6</div>
                                    <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu thích</button>
                                </div>
                            </div>
                        </div>
                        <div class="col l-2-4 m-4 c-6">
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
                                <div class="bottom">
                                    <div class="star"><i class="fa-solid fa-star"></i> 5</div>
                                    <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu
                                        thích</button>
                                </div>
                            </div>
                        </div>
                        <div class="col l-2-4 m-4 c-6">
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
                                    <div class="star"><i class="fa-solid fa-star"></i> 3.7</div>
                                    <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu
                                        thích</button>
                                </div>
                            </div>
                        </div>
                        <div class="col l-2-4 m-4 c-6">
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
                                <div class="bottom">
                                    <div class="star"><i class="fa-solid fa-star"></i> 4.9</div>
                                    <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu
                                        thích</button>
                                </div>
                            </div>
                        </div>
                        <div class="col l-2-4 m-4 c-6">
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
                                        <div class="discount-badge">Giảm 20%</div>
                                    </div>
                                    <div class="price-bottom">
                                        <span class="new-price">400.000đ</span>
                                    </div>
                                </div>
                                <div class="bottom">
                                    <div class="star"><i class="fa-solid fa-star"></i> 4.8</div>
                                    <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu thích</button>
                                </div>
                            </div>
                        </div>
                        <div class="col l-2-4 m-4 c-6">
                            <div class="product-card">
                                <a><img src="assets/img/keochuot.jpg" alt=""></a>
                                <a>
                                    <p>(Combo 5 miếng) Keo bẫy chuột siêu dính sạch sẽ, an toàn cho gia đình</p>
                                </a>
                                <div class="price-discount">
                                    <div class="price-top">
                                        <span class="old-price">110.000đ</span>
                                        <div class="discount-badge">Giảm 20%</div>
                                    </div>
                                    <div class="price-bottom">
                                        <span class="new-price">88.000đ</span>
                                    </div>
                                </div>
                                <div class="bottom">
                                    <div class="star"><i class="fa-solid fa-star"></i> 4.2</div>
                                    <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu
                                        thích</button>
                                </div>
                            </div>
                        </div>
                        <div class="col l-2-4 m-4 c-6">
                            <div class="product-card">
                                <a><img src="assets/img/luoicatco.png" alt=""></a>
                                <a>
                                    <p>Lưỡi cắt cỏ tận gốc 5 cánh thiết kế thông minh an toàn tiện lợi</p>
                                </a>
                                <div class="price-discount">
                                    <div class="price-top">
                                        <span class="old-price">250.000đ</span>
                                        <div class="discount-badge">Giảm 20%</div>
                                    </div>
                                    <div class="price-bottom">
                                        <span class="new-price">200.000đ</span>
                                    </div>
                                </div>
                                <div class="bottom">
                                    <div class="star"><i class="fa-solid fa-star"></i> 4.5</div>
                                    <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu
                                        thích</button>
                                </div>
                            </div>
                        </div>
                        <div class="col l-2-4 m-4 c-6">
                            <div class="product-card">
                                <a><img src="assets/img/chotkhoa.jpg" alt=""></a>
                                <a>
                                    <p>Chốt khóa cửa hợp kim núm vặn xoay bền chắc, chống trộm, 42*30mm dày 13mm</p>
                                </a>
                                <div class="price-discount">
                                    <div class="price-top">
                                        <span class="old-price">190.000đ</span>
                                        <div class="discount-badge">Giảm 20%</div>
                                    </div>
                                    <div class="price-bottom">
                                        <span class="new-price">152.000đ</span>
                                    </div>
                                </div>
                                <div class="bottom">
                                    <div class="star"><i class="fa-solid fa-star"></i> 4.2</div>
                                    <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu
                                        thích</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <button class="button-view">
                        <i class="fa-solid fa-chevron-down"></i>
                    </button>
                </div>
                <div class="head-content">
                    <p class="title">Giảm đến 10%</p>
                    <p class="time">Thời gian: 20/11 - 15/12</p>
                    <p class="apply">Giảm tối đa 400.000đ</p>
                    <p class="note">Đơn tối thiểu 0đ</p>
                </div>
                <div class="slide-wrapper">
                    <div class="slide-list-product row small-gutter">
                        <div class="col l-2-4 m-4 c-6">
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
                                    <div class="star"><i class="fa-solid fa-star"></i> 4.3</div>
                                    <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu thích</button>
                                </div>
                            </div>
                        </div>
                        <div class="col l-2-4 m-4 c-6">
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
                                    <div class="star"><i class="fa-solid fa-star"></i>3.3</div>
                                    <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu thích</button>
                                </div>
                            </div>
                        </div>
                        <div class="col l-2-4 m-4 c-6">
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
                                <div class="bottom">
                                    <div class="star"><i class="fa-solid fa-star"></i> 4.9</div>
                                    <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu
                                        thích</button>
                                </div>
                            </div>

                        </div>
                        <div class="col l-2-4 m-4 c-6">
                            <div class="product-card">
                                <a><img src="assets/img/maymay.jpg" alt=""></a>
                                <a>
                                    <p>Máy may mini gia đình có vắt sổ đa năng tích hợp 12 kiểu may</p>
                                    </p>
                                </a>
                                <div class="price-discount">
                                    <div class="price-top">
                                        <span class="old-price">422.000đ</span>
                                        <div class="discount-badge">Giảm 15%</div>
                                    </div>
                                    <div class="price-bottom">
                                        <span class="new-price">358.000đ</span>
                                    </div>
                                </div>
                                <div class="bottom">
                                    <div class="star"><i class="fa-solid fa-star"></i> 4.8</div>
                                    <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu
                                        thích</button>
                                </div>
                            </div>
                        </div>
                        <div class="col l-2-4 m-4 c-6">
                            <div class="product-card">
                                <a><img src="assets/img/tấuc.jpg" alt=""></a>
                                <a>
                                    <p>Tẩu sạc nhanh trên ô tô PD20W QC3.0, dùng cho các dòng điện thoại cao cấp
                                    </p>
                                </a>
                                <div class="price-discount">
                                    <div class="price-top">
                                        <span class="old-price">120.000đ</span>
                                        <div class="discount-badge">Giảm 15%</div>
                                    </div>
                                    <div class="price-bottom">
                                        <span class="new-price">102.000đ</span>
                                    </div>
                                </div>
                                <div class="bottom">
                                    <div class="star"><i class="fa-solid fa-star"></i> 3.7</div>
                                    <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu
                                        thích</button>
                                </div>
                            </div>
                        </div>
                        <div class="col l-2-4 m-4 c-6">
                            <div class="product-card">
                                <a><img src="assets/img/battrumxe.jpg" alt=""></a>
                                <a>
                                    <p>Bạt trùm xe máy chống mưa chống nắng cao cấp
                                    </p>
                                </a>
                                <div class="price-discount">
                                    <div class="price-top">
                                        <span class="old-price">160.000đ</span>
                                        <div class="discount-badge">Giảm 15%</div>
                                    </div>
                                    <div class="price-bottom">
                                        <span class="new-price">136.000đ</span>
                                    </div>
                                </div>
                                <div class="bottom">
                                    <div class="star"><i class="fa-solid fa-star"></i> 4.9</div>
                                    <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu
                                        thích</button>
                                </div>
                            </div>
                        </div>
                        <div class="col l-2-4 m-4 c-6">
                            <div class="product-card">
                                <a><img src="assets/img/tuitreo.jpg" alt=""></a>
                                <a>
                                    <p>Túi treo sườn xe đạp thể thao cao cấp West Biking</p>
                                </a>
                                <div class="price-discount">
                                    <div class="price-top">
                                        <span class="old-price">220.000đ</span>
                                        <div class="discount-badge">Giảm 15%</div>
                                    </div>
                                    <div class="price-bottom">
                                        <span class="new-price">187.000đ</span>
                                    </div>
                                </div>
                                <div class="bottom">
                                    <div class="star"><i class="fa-solid fa-star"></i> 4.8</div>
                                    <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu thích</button>
                                </div>
                            </div>
                        </div>
                        <div class="col l-2-4 m-4 c-6">
                            <div class="product-card">
                                <a><img src="assets/img/dungcucatmong.jpg" alt=""></a>
                                <a>
                                    <p>Dụng cụ cắt móng có kính lúp</p>
                                </a>
                                <div class="price-discount">
                                    <div class="price-top">
                                        <span class="old-price">99.000đ</span>
                                        <div class="discount-badge">Giảm 15%</div>
                                    </div>
                                    <div class="price-bottom">
                                        <span class="new-price">84.000đ</span>
                                    </div>
                                </div>
                                <div class="bottom">
                                    <div class="star"><i class="fa-solid fa-star"></i> 4.2</div>
                                    <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu
                                        thích</button>
                                </div>
                            </div>
                        </div>
                        <div class="col l-2-4 m-4 c-6">
                            <div class="product-card">
                                <a><img src="assets/img/denbanled.jpg" alt=""></a>
                                <a>
                                    <p>Đèn bàn led mini lamp</p>
                                </a>
                                <div class="price-discount">
                                    <div class="price-top">
                                        <span class="old-price">150.000đ</span>
                                        <div class="discount-badge">Giảm 15%</div>
                                    </div>
                                    <div class="price-bottom">
                                        <span class="new-price">127.000đ</span>
                                    </div>
                                </div>
                                <div class="bottom">
                                    <div class="star"><i class="fa-solid fa-star"></i> 4.5</div>
                                    <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu
                                        thích</button>
                                </div>
                            </div>
                        </div>
                        <div class="col l-2-4 m-4 c-6">
                            <div class="product-card">
                                <a><img src="assets/img/coruabinh.jpg" alt=""></a>
                                <a>
                                    <p>Cọ rửa bình</p>
                                </a>
                                <div class="price-discount">
                                    <div class="price-top">
                                        <span class="old-price">85.000đ</span>
                                        <div class="discount-badge">Giảm 15%</div>
                                    </div>
                                    <div class="price-bottom">
                                        <span class="new-price">72.000đ</span>
                                    </div>
                                </div>
                                <div class="bottom">
                                    <div class="star"><i class="fa-solid fa-star"></i> 4.2</div>
                                    <button class="fav-btn"><i class="fa-regular fa-heart"></i> Yêu
                                        thích</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <button class="button-view">
                        <i class="fa-solid fa-chevron-down"></i>
                    </button>
                </div>
            </div>

        </div>

        </div>
    </main>
    <script src="assets/js/script.js"></script>
</body>

</html>