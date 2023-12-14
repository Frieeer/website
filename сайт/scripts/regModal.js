document.getElementById('registerForm').addEventListener('submit', function(event) {
    event.preventDefault();

    const username = document.getElementById('loginInput').value;
	const email = document.getElementById('emailInput').value;
    const password = document.getElementById('passwordInput').value;

    const data = {
      username,
	  email,
      password,
    };

    fetch('http://localhost:3000/register', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify(data),
    })
    .then(response => {
      if (response.ok) {
        return response.json();
      } else {
        throw new Error('Ошибка при регистрации пользователя');
      }
    })
    .then(result => {
      console.log('Пользователь успешно зарегистрирован:', result);
	  
	  
	 window.location.href = 'login.html';
    })
    .catch(error => {
      console.error('Ошибка:', error);
    });
});