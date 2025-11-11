document.addEventListener('DOMContentLoaded', () => {
  const video = document.getElementById('erp-video');
  const container = document.getElementById('video-container');

  // create spinner
  const loader = document.createElement('div');
  loader.innerHTML = `
    <div style="position:absolute;top:50%;left:50%;transform:translate(-50%,-50%);
                border:4px solid #f3f3f3;border-top:4px solid #3498db;
                border-radius:50%;width:40px;height:40px;
                animation:spin 1s linear infinite;"></div>`;
  container.appendChild(loader);

  function removeLoader() {
    loader.remove();
  }

  // If video already has data (cached), remove loader immediately
  if (video.readyState >= 2) { // HAVE_CURRENT_DATA
    removeLoader();
  } else {
    video.addEventListener('loadeddata', removeLoader);
  }
});
