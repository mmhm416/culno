function calculation () {
  if ( document.getElementById('item-quantity')){
  const quantity = document.getElementById("item-quantity");
  const priceApiece = document.getElementById("price-apiece");
  const totalPrice = document.getElementById("total-price");

  quantity.addEventListener("keyup", () => {
    let priceText = priceApiece.textContent
    let priceTextNum = priceText.replace(/[^0-9]/g, '');
    let priceNum = parseInt(priceTextNum, 10);
    let total = parseInt(quantity.value * priceNum, 10);
    totalPrice.innerHTML = (total).toLocaleString();
  });
  };
}

window.addEventListener('load', calculation);