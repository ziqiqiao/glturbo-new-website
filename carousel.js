(function () {
  const carousel = document.querySelector("[data-carousel]");
  if (!carousel) return;

  const track = carousel.querySelector("[data-carousel-track]");
  const slides = Array.from(track.children);
  const dots = Array.from(carousel.querySelectorAll("[data-carousel-dot]"));
  const previous = carousel.querySelector("[data-carousel-previous]");
  const next = carousel.querySelector("[data-carousel-next]");
  const reduceMotion = window.matchMedia("(prefers-reduced-motion: reduce)").matches;
  let current = 0;
  let timer;
  let pointerStart = null;

  function showSlide(index) {
    current = (index + slides.length) % slides.length;
    track.style.transform = `translateX(-${current * 100}%)`;

    slides.forEach((slide, slideIndex) => {
      slide.setAttribute("aria-hidden", String(slideIndex !== current));
      const link = slide.querySelector("a");
      if (link) link.tabIndex = slideIndex === current ? 0 : -1;
    });
    dots.forEach((dot, dotIndex) => {
      if (dotIndex === current) dot.setAttribute("aria-current", "true");
      else dot.removeAttribute("aria-current");
    });
  }

  function stop() {
    window.clearInterval(timer);
  }

  function start() {
    stop();
    if (reduceMotion) return;
    timer = window.setInterval(() => showSlide(current + 1), 5000);
  }

  previous.addEventListener("click", () => {
    showSlide(current - 1);
    start();
  });
  next.addEventListener("click", () => {
    showSlide(current + 1);
    start();
  });
  dots.forEach((dot, index) => dot.addEventListener("click", () => {
    showSlide(index);
    start();
  }));

  carousel.addEventListener("mouseenter", stop);
  carousel.addEventListener("mouseleave", start);
  carousel.addEventListener("focusin", stop);
  carousel.addEventListener("focusout", start);
  carousel.addEventListener("pointerdown", (event) => {
    pointerStart = event.clientX;
  });
  carousel.addEventListener("pointerup", (event) => {
    if (pointerStart === null) return;
    const distance = event.clientX - pointerStart;
    if (Math.abs(distance) > 50) showSlide(current + (distance < 0 ? 1 : -1));
    pointerStart = null;
    start();
  });
  document.addEventListener("visibilitychange", () => {
    if (document.hidden) stop();
    else start();
  });

  showSlide(0);
  start();
})();
