document.addEventListener("DOMContentLoaded", () => {
  console.log("✅ JS Loaded");

  const serviceDataEl = document.getElementById("service-json");
  if (!serviceDataEl) {
    console.error("❌ Missing #service-json element");
    return;
  }

  let services;
  try {
    services = JSON.parse(serviceDataEl.textContent);
  } catch (e) {
    console.error("❌ Failed to parse JSON:", e);
    return;
  }

  document.querySelectorAll(".service-card").forEach(card => {
    card.addEventListener("click", () => {
      const category = card.getAttribute("data-category");
      if (!category) {
        console.warn("⚠️ Missing data-category");
        return;
      }

      const matched = services.filter(s => s.category === category);
      if (!matched.length) {
        alert(`No services found under: ${category}`);
        return;
      }

      document.getElementById("serviceTitle").textContent = category;
      const container = document.getElementById("categoryServicesContainer");
      container.innerHTML = "";

      matched.forEach(service => {
        const div = document.createElement("div");
        div.className = "col-md-6 mb-4";

        const image = service.images?.[0]
          ? `<img src="${service.images[0]}" class="card-img-top" alt="${service.name}">`
          : "";

        div.innerHTML = `
          <div class="card h-100 shadow-sm service-detail" 
               style="cursor:pointer;"
               data-slug="${service.slug}">
            ${image}
            <div class="card-body">
              <h5 class="card-title">${service.name}</h5>
              <p class="card-text">${service.description.substring(0, 120)}...</p>
            </div>
          </div>
        `;

        container.appendChild(div);

        // ✅ Redirect on click instead of second modal
        div.querySelector(".service-detail").addEventListener("click", (e) => {
          e.stopPropagation();
          if (!service.slug) {
            alert("Service page unavailable");
            return;
          }
          window.location.href = `/service/${service.slug}/`;
        });
      });

      const categoryModal = new bootstrap.Modal(document.getElementById("serviceModal"));
      categoryModal.show();
    });
  });
});
