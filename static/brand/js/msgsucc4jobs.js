document.addEventListener("DOMContentLoaded", function () {
  const url = new URL(window.location);

  if (url.pathname.includes("apply") && url.search.includes("submitted=1")) {
    const modalElement = document.getElementById("successModal");

    // ✅ Explicitly set backdrop + keyboard to disable closing except via OK
    const modal = new bootstrap.Modal(modalElement, {
      backdrop: 'static',
      keyboard: false
    });

    // Show the modal
    modal.show();

    // Handle OK button click
    const okButton = modalElement.querySelector("button.btn-primary");

    okButton.addEventListener("click", () => {
      modal.hide();

      setTimeout(() => {
        window.location.href = "/#home";  // 👈 Set your desired redirect here
      }, 200);
    });
  }
});

