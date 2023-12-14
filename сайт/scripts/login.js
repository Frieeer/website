document.getElementById('loginForm').addEventListener('submit', function(event) {
    event.preventDefault();

    const username = document.getElementById('loginInput').value;
    const password = document.getElementById('passwordInput').value;

    const data = {
      username,
      password,
    };

    fetch('http://localhost:3000/login', {
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
        throw new Error('Ошибка при входе в аккаунт');
      }
    })
    .then(result => {
      console.log('Вход выполнен успешно:', result);

	  localStorage.setItem('token', result.token);
	  
	  window.location.href = 'index.html';
    })
    .catch(error => {
      console.error('Ошибка:', error);
    });
});