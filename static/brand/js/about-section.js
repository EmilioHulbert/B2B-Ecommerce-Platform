function toggleAboutPopup() {
    const popup = document.getElementById('about-popup');
    popup.classList.toggle('hidden');
  }

// Close if clicked outside content
document.addEventListener('click', function (event) {
  const popup = document.getElementById('about-popup');
  const content = document.querySelector('.about-popup-content');

  // If popup is open and clicked target is outside the content
  if (!popup.classList.contains('hidden') && !content.contains(event.target) && !event.target.matches('.btn')) {
    toggleAboutPopup();
  }
});
