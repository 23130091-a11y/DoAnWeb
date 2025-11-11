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