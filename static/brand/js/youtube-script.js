(function() {
    const videoId = 'zI2eCVrUTvU';
    const iframe = document.getElementById('youtube-iframe');
    const loader = document.getElementById('youtube-loader');
    const container = document.getElementById('youtube-container');
    let retryCount = 0;
    const maxRetries = 3;

    function loadYouTubeVideo() {
      iframe.src = `https://www.youtube.com/embed/${videoId}?enablejsapi=1&origin=${window.location.origin}`;

      // Check if loaded after 5 seconds
      setTimeout(() => {
        checkVideoLoaded();
      }, 5000);
    }

    function checkVideoLoaded() {
      // Check if iframe has loaded content
      try {
        if (iframe.contentWindow && iframe.offsetHeight > 0) {
          loader.style.display = 'none';
          iframe.style.display = 'block';
          console.log('✅ YouTube video loaded successfully');
        } else {
          handleLoadError();
        }
      } catch (e) {
        // Cross-origin restriction is normal, just check if visible
        if (iframe.src && iframe.offsetHeight > 0) {
          loader.style.display = 'none';
          iframe.style.display = 'block';
          console.log('✅ YouTube video loaded successfully');
        } else {
          handleLoadError();
        }
      }
    }

    function handleLoadError() {
      retryCount++;
      if (retryCount < maxRetries) {
        console.warn(`⚠️ YouTube loading attempt ${retryCount} failed. Retrying...`);
        loader.innerHTML = `
          <div style="border: 4px solid #f3f3f3; border-top: 4px solid #3498db; border-radius: 50%; width: 40px; height: 40px; animation: spin 1s linear infinite; margin: 0 auto;"></div>
          <p style="margin-top: 10px; color: #666;">Retrying... (${retryCount}/${maxRetries})</p>
        `;
        setTimeout(() => {
          iframe.src = '';
          loadYouTubeVideo();
        }, 2000);
      } else {
        loader.innerHTML = `
          <div style="color: #e74c3c; padding: 1rem; text-align: center;">
            <p style="margin-bottom: 10px;">Unable to load video</p>
            <a href="https://www.youtube.com/watch?v=${videoId}" target="_blank" style="color: #3498db; text-decoration: underline;">Watch on YouTube</a>
          </div>
        `;
      }
    }

    // Listen for iframe load event
    iframe.addEventListener('load', () => {
      loader.style.display = 'none';
      iframe.style.display = 'block';
    });

    // Start loading when page loads
    if (document.readyState === 'loading') {
      document.addEventListener('DOMContentLoaded', loadYouTubeVideo);
    } else {
      loadYouTubeVideo();
    }
  })();