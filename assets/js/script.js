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

    if (favBtn.classList.contains('active')) {
      heartIcon.classList.remove('fa-regular');
      heartIcon.classList.add('fa-solid');
    } else {
      heartIcon.classList.remove('fa-solid');
      heartIcon.classList.add('fa-regular');
    }
  });
});
//cart 
document.addEventListener("DOMContentLoaded", function () {
  // Lấy checkbox 
  const selectAllFooter = document.getElementById("select-all-footer");
  const totalPriceEl = document.querySelector(".total-price");
  const totalItemsEl = document.querySelector(".total-items");

  // --- Cập nhật tổng tiền của từng sản phẩm 
  function updateItemTotal(cartItem) {
    const price = parseInt(cartItem.querySelector(".new-price").textContent);
    const qty = parseInt(cartItem.querySelector("input.text").value);
    const totalCol = cartItem.querySelector(".total-col");
    totalCol.textContent = (price * qty).toLocaleString("vi-VN");
  }

  function updateAllItemTotals() {
    const cartItems = document.querySelectorAll(".cart-item");
    cartItems.forEach(updateItemTotal);
  }

  // Cập nhật số lượng sản phẩm và tổng tiền ở footer
  function updateFooterSummary() {
    const selectedItems = document.querySelectorAll(".item-checkbox:checked");
    let totalPrice = 0;
    let totalQty = 0;

    selectedItems.forEach(item => {
      const cartItem = item.closest(".cart-item");
      const price = parseInt(cartItem.querySelector(".new-price").textContent);
      const qty = parseInt(cartItem.querySelector("input.text").value);
      totalPrice += price * qty;
      totalQty += qty;
    });

    totalPriceEl.textContent = totalPrice.toLocaleString("vi-VN") + "đ";
    totalItemsEl.textContent = totalQty;
  }

  //Chọn tất cả sản phẩm khi chọn danh mục ngày 
  const shopCheckboxes = document.querySelectorAll(".shop-checkbox");
  shopCheckboxes.forEach(shopCheckbox => {
    shopCheckbox.addEventListener("change", function () {
      const shopBlock = shopCheckbox.closest(".shop-block");
      const itemCheckboxes = shopBlock.querySelectorAll(".item-checkbox");

      itemCheckboxes.forEach(item => item.checked = shopCheckbox.checked);
      updateFooterSummary();
      updateFooterCheckbox();
    });
  });
  // Chọn từng sản phẩm
  const itemCheckboxes = document.querySelectorAll(".item-checkbox");
  itemCheckboxes.forEach(item => {
    item.addEventListener("change", function () {
      const shopBlock = item.closest(".shop-block");
      const shopCheckbox = shopBlock.querySelector(".shop-checkbox");
      const items = shopBlock.querySelectorAll(".item-checkbox");
      shopCheckbox.checked = Array.from(items).every(i => i.checked);

      updateFooterSummary();
      updateFooterCheckbox();
    });
  });
  // Chọn tất cả sản phẩm 
  selectAllFooter.addEventListener("change", function () {
    const allShops = document.querySelectorAll(".shop-checkbox");
    const allItems = document.querySelectorAll(".item-checkbox");

    allShops.forEach(shop => shop.checked = selectAllFooter.checked);
    allItems.forEach(item => item.checked = selectAllFooter.checked);

    updateFooterSummary();
    updateAllItemTotals();
  });
  function updateFooterCheckbox() {
    const allItems = document.querySelectorAll(".item-checkbox");
    selectAllFooter.checked = Array.from(allItems).every(i => i.checked);
  }

  // Tăng giảm số lượng sản phẩm
  const qtyInputs = document.querySelectorAll(".item-qty input.text");
  qtyInputs.forEach(input => {
    input.addEventListener("input", function () {
      if (input.value < 1 || isNaN(input.value)) input.value = 1;
      const cartItem = input.closest(".cart-item");
      updateItemTotal(cartItem);
      updateFooterSummary();
    });
  });

  const qtyButtons = document.querySelectorAll(".item-qty button");
  qtyButtons.forEach(btn => {
    btn.addEventListener("click", function () {
      const parent = btn.closest(".item-qty");
      const input = parent.querySelector("input.text");
      let val = parseInt(input.value);

      if (btn.textContent === "+") val++;
      else if (btn.textContent === "-" && val > 1) val--;

      input.value = val;
      const cartItem = btn.closest(".cart-item");
      updateItemTotal(cartItem);
      updateFooterSummary();
    });
  });

  updateAllItemTotals();
  updateFooterSummary();
  updateFooterCheckbox();
  // Xóa sản phẩm
  document.addEventListener("click", function (e) {
    if (e.target.classList.contains("item-delete")) {
      const cartItem = e.target.closest(".cart-item");
      const shopBlock = cartItem.closest(".shop-block");

      cartItem.remove();
      if (shopBlock.querySelectorAll(".cart-item").length === 0) {
        shopBlock.remove();
      }

      updateFooterSummary();
      updateFooterCheckbox();
    }
  });

  // Xóa toàn bộ giỏ hàng
  document.querySelector(".footer-btn").addEventListener("click", function () {
    const shopBlocks = document.querySelectorAll(".shop-block");
    shopBlocks.forEach(block => block.remove());

    const cartFooter = document.querySelector(".cart-footer");
    if (cartFooter) cartFooter.style.display = "none";

    const cartHeader = document.querySelector(".cart-header");
    if (cartHeader) cartHeader.remove();

    const emptyMessage = document.querySelector(".empty-message");
    if (emptyMessage) emptyMessage.style.display = "block";
  });
});

