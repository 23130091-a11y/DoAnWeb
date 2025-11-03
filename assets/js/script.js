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