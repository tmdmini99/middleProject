const totalPrice = document.getElementById('totalPrice');
const productPrice = document.getElementById('productPrice');
const productEa = document.getElementById('productEa');

console.log(productEa.value);

totalPrice.value = productPrice.value * productEa.value;

productEa.addEventListener('focusout', function(){
    totalPrice.value = productPrice.value * productEa.value;
})
