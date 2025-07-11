document.addEventListener("DOMContentLoaded", () => {
  console.log("✅ JS loaded");

  const services = JSON.parse(document.getElementById("service-json").textContent);

  document.querySelectorAll(".service-card").forEach(card => {
    card.addEventListener("click", () => {
      const id = parseInt(card.getAttribute("data-id"));
      const service = services.find(s => s.id === id);

      if (!service) return;

      document.getElementById("serviceTitle").textContent = service.name;
      document.getElementById("serviceDesc").textContent = service.description;

      const carouselInner = document.getElementById("carouselInner");
      carouselInner.innerHTML = "";

      service.images.forEach((url, i) => {
        const item = document.createElement("div");
        item.className = "carousel-item" + (i === 0 ? " active" : "");
        item.innerHTML = `<img src="${url}" class="d-block w-100 rounded">`;
        carouselInner.appendChild(item);
      });

      const modalEl = document.getElementById("serviceModal");
      const modal = new bootstrap.Modal(modalEl);
      modal.show();
    });
  });
});

