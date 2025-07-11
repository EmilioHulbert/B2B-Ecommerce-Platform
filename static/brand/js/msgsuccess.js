document.addEventListener("DOMContentLoaded", function () {
  const shouldShowModal = window.location.href.includes("submitted=1");

  if (shouldShowModal) {
    const modalElement = document.getElementById("successModal");
    const modal = new bootstrap.Modal(modalElement);
    modal.show();

    // Once modal is hidden (closed), clean the URL
    modalElement.addEventListener("hidden.bs.modal", () => {
      // Replace the current history entry with #home (or just remove query params)
      const url = new URL(window.location);
      url.search = ""; // Removes ?submitted=1
      url.hash = "#home"; // Optional: jump to home anchor
      window.history.replaceState({}, document.title, url);
    });
  }
});

