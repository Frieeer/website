
document.addEventListener('DOMContentLoaded', function() {

  const token = localStorage.getItem('token');
  const isAuthenticated = !!token; 

  if (isAuthenticated) {
    document.getElementById('header_nav_img').src = 'images/profile.svg';
	document.getElementById('header_link').href = 'profile.html';
  }
});


