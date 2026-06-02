document.addEventListener('DOMContentLoaded', () => {
  const themeToggleBtn = document.getElementById('theme-toggle');
  const body = document.body;

  // Retrieve theme preference from localStorage or default to dark-theme
  const savedTheme = localStorage.getItem('theme') || 'dark-theme';
  
  // Apply the saved theme on load
  body.className = savedTheme;

  // Toggle theme click event handler
  themeToggleBtn.addEventListener('click', () => {
    if (body.classList.contains('dark-theme')) {
      body.classList.replace('dark-theme', 'light-theme');
      localStorage.setItem('theme', 'light-theme');
    } else {
      body.classList.replace('light-theme', 'dark-theme');
      localStorage.setItem('theme', 'dark-theme');
    }
  });
});
