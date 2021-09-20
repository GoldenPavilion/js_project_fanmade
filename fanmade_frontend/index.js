const endPoint = "http://localhost:3000/api/products"

document.addEventListener('DOMContentLoaded', () => {
    fetchProducts();
})

function fetchProducts() {
    fetch(endPoint)
    .then(response => response.json())
    .then(products => {
        console.log(products);
    })
}