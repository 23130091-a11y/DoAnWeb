/* Script slider */
const slides = document.querySelectorAll("#slider .slide");
let index = 0;
  /* Kiểm tra trong code html có #slider mới active */
if (slides.length > 0) {
  slides[index].classList.add("active");

  function nextSlide() {
    slides[index].classList.remove("active");
    index = (index + 1) % slides.length;
    slides[index].classList.add("active");
  };

  slides[index].classList.add("active");
  setInterval(nextSlide, 3000);
}
//cart 
document.addEventListener("DOMContentLoaded", function () {
    const selectAllFooter = document.getElementById("select-all-footer");
    const totalPriceEl = document.querySelector(".total-price");
    const totalItemsEl = document.querySelector(".total-items");

    // Cập nhật tổng tiền và số lượng
    function updateFooterSummary() {
        const selectedItems = document.querySelectorAll(".item-checkbox:checked");
        let totalPrice = 0;
        let totalQty = 0;

        selectedItems.forEach(item => {
            const cartItem = item.closest(".cart-item");
            const price = parseInt(cartItem.querySelector(".new-price").textContent);
            const qty = parseInt(cartItem.querySelector("input[type='text']").value);
            totalPrice += price * qty;
            totalQty += qty;
        });

        totalPriceEl.textContent = totalPrice.toLocaleString("vi-VN") + "đ";
        totalItemsEl.textContent = totalQty;
    }

    // Cập nhật trạng thái checkbox footer
    function updateFooterCheckbox() {
        const allItems = document.querySelectorAll(".item-checkbox");
        selectAllFooter.checked = Array.from(allItems).every(i => i.checked);
    }

    // Khi click checkbox footer: chọn tất cả sản phẩm
    selectAllFooter.addEventListener("change", function () {
        const allItems = document.querySelectorAll(".item-checkbox");
        allItems.forEach(item => item.checked = selectAllFooter.checked);
        updateFooterSummary();
    });

    // Khi click checkbox từng sản phẩm: cập nhật tổng và footer checkbox
    const itemCheckboxes = document.querySelectorAll(".item-checkbox");
    itemCheckboxes.forEach(item => {
        item.addEventListener("change", function () {
            updateFooterSummary();
            updateFooterCheckbox();
        });
    });

    updateFooterSummary();
    updateFooterCheckbox();
});

/* Xử lý load phần header */
function loadComponent(id, path) {
  fetch(path)
    .then(res => res.text())
    .then(html => {
      document.getElementById(id).innerHTML = html;
    })
    .catch(err => console.error("Error loading component:", err));
}

loadComponent("header", "./layout/header.html");

 // Script Navigation button 
slides[index].classList.add("active");
setInterval(nextSlide, 3000);
document.querySelectorAll('.featured').forEach(section => {
    const list = section.querySelector('.product-list');
    const btnLeft = section.querySelector('.scroll-btn.left');
    const btnRight = section.querySelector('.scroll-btn.right');

    if (btnLeft && btnRight && list) {
        btnLeft.addEventListener('click', () => {
            list.scrollBy({ left: -300, behavior: 'smooth' });
        });

        btnRight.addEventListener('click', () => {
            list.scrollBy({ left: 300, behavior: 'smooth' });
        });
    }
});
//Click button like
const favBtns = document.querySelectorAll('.fav-btn');
favBtns.forEach(favBtn => {
  favBtn.addEventListener('click', () => {
    favBtn.classList.toggle('active');
    const heartIcon = favBtn.querySelector('i');

    if(favBtn.classList.contains('active')){
      heartIcon.classList.remove('fa-regular');
      heartIcon.classList.add('fa-solid');
    } else {
      heartIcon.classList.remove('fa-solid');
      heartIcon.classList.add('fa-regular');
    }
  });
});