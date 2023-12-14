document.getElementById('admin_panelForm').addEventListener('submit', function(event) {
    event.preventDefault();
	
	const selectedPage = document.getElementById('pageSelector').value;
	
    const product_name = document.getElementById('product_name_input').value;
    const product_description = document.getElementById('product_description_input').value;
    const product_review = document.getElementById('product_review_input').value;
    const product_img = document.getElementById('product_img_input').value;
	const product_price = document.getElementById('product_price_input').value;

    const data = {
      product_name,
      product_description,
      product_review,
      product_img,
	  product_price,
    };

    fetch(`http://localhost:3000/addProduct/${selectedPage}`, {
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
        throw new Error('Ошибка при добавлении товара');
      }
    })
    .then(result => {
      console.log('Товар успешно добавлен:', result);
    })
    .catch(error => {
      console.error('Ошибка:', error);
    });
  });