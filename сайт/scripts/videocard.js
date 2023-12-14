
function createProductElement(productData, page) {
  const productDiv = document.createElement('div');
  productDiv.className = 'product_div';

  const productLink = document.createElement('a');
  productLink.href = '#!';
  productLink.className = 'product_link';
  productDiv.appendChild(productLink);

  const filterImg = document.createElement('img');
  filterImg.className = 'filter_img';
  filterImg.src = productData.product_img;
  filterImg.alt = 'Изображение';
  productLink.appendChild(filterImg);

  const productDescription = document.createElement('div');
  productDescription.className = 'product_description';

  const productTextElement = document.createElement('div');
  productTextElement.className = 'product_text';
  productTextElement.textContent = productData.product_name;
  const productTextElement1 = document.createElement('div');
  productTextElement1.className = 'product_text';
  productTextElement1.textContent = productData.product_description;
  const reviewImg = document.createElement('img');
  reviewImg.className = 'review';
  reviewImg.src = productData.product_review;
  reviewImg.alt = 'Отзывы';
  productDescription.appendChild(productTextElement);
  productDescription.appendChild(productTextElement1);
  productDescription.appendChild(reviewImg);
  productLink.appendChild(productDescription);

  const productBuy = document.createElement('div');
  productBuy.className = 'product_buy';
  productDiv.appendChild(productBuy);

  const productPriceText = document.createElement('div');
  productPriceText.className = 'product_price_text';
  productPriceText.textContent = productData.product_price;
  productBuy.appendChild(productPriceText);

  const productBuyButton = document.createElement('button');
  productBuyButton.className = 'product_buy_button';
  productBuy.appendChild(productBuyButton);

  const buyButtonText = document.createElement('div');
  buyButtonText.className = 'buy_button_text';
  buyButtonText.textContent = 'Купить'; 
  productBuyButton.appendChild(buyButtonText);

  return productDiv;
 
}

  const page = 'gpu';
  fetch(`http://localhost:3000/getProducts/${page}`)
    .then(response => response.json())
    .then(data => {
	const product = document.getElementById('product');
	data.products.forEach(productData => {
		const productDiv = createProductElement(productData, page);
		product.appendChild(productDiv);
	});
	})
    .catch(error => {
      console.error('Ошибка при получении данных о товарах:', error);
    });