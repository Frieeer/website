window.addEventListener('DOMContentLoaded', () => {
    const logoutButton = document.getElementById('logoutButton');

	logoutButton.addEventListener('click', () => {
      localStorage.removeItem('token');
      window.location.href = 'index.html';
    });
  });