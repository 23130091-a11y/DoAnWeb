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
  }

  setInterval(nextSlide, 3000);
}

/* Load header */
function loadComponent(id, path) {
  fetch(path)
    .then(res => res.text())
    .then(html => {
      document.getElementById(id).innerHTML = html;
    })
    .catch(err => console.error("Error loading component:", err));
}
loadComponent("header", "./layout/header.html");