document.addEventListener("DOMContentLoaded", () => {
  console.log("✅ JS loaded");

  const services = JSON.parse(document.getElementById("service-json").textContent);

  // Step 1: Listen to clicks on each category card
  document.querySelectorAll(".service-card").forEach(card => {
    card.addEventListener("click", () => {
      const category = card.getAttribute("data-category");
      if (!category) return;

      const matched = services.filter(s => s.category === category);
      if (!matched.length) {
        alert(`No services found under "${category}"`);
        return;
      }

      document.getElementById("serviceTitle").textContent = category;

      const container = document.getElementById("categoryServicesContainer");
      container.innerHTML = "";

      // Step 2: Render each service as a card inside the category modal
      matched.forEach(service => {
        const cardDiv = document.createElement("div");
        cardDiv.className = "col-md-6 mb-4";

        const imageHtml = service.images[0]
          ? `<img src="${service.images[0]}" class="card-img-top" alt="${service.name}">`
          : '';

        cardDiv.innerHTML = `
          <div class="card h-100 shadow-sm service-detail" style="cursor:pointer;" data-service-id="${service.id}">
            ${imageHtml}
            <div class="card-body">
              <h5 class="card-title">${service.name}</h5>
              <p class="card-text">${service.description.substring(0, 120)}...</p>
            </div>
          </div>
        `;

        container.appendChild(cardDiv);

        // Step 3: Add click handler to show the detail modal
        cardDiv.querySelector(".service-detail").addEventListener("click", () => {
          document.getElementById("serviceDetailTitle").textContent = service.name;
          document.getElementById("serviceDetailDesc").textContent = service.description;

          const carouselInner = document.getElementById("serviceDetailCarouselInner");
          carouselInner.innerHTML = "";

          service.images.forEach((url, i) => {
            const item = document.createElement("div");
            item.className = "carousel-item" + (i === 0 ? " active" : "");
            item.innerHTML = `<img src="${url}" class="d-block w-100 rounded">`;
            carouselInner.appendChild(item);
          });

          // Show detailed modal
          const detailModal = new bootstrap.Modal(document.getElementById("serviceDetailModal"));
          detailModal.show();
        });
      });

      // Step 4: Show the category modal
      const categoryModal = new bootstrap.Modal(document.getElementById("serviceModal"));
      categoryModal.show();
    });
  });
});

