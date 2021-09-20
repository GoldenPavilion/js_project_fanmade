const endPoint = "http://localhost:3000/api/products"

document.addEventListener('DOMContentLoaded', () => {
    fetchProducts();
})

function fetchProducts() {
    fetch(endPoint)
    .then(response => response.json())
    .then(products => {
        products.data.forEach(product => {
            console.log(product.attributes.name);
            const productMarkup = `
                <div data-id= ${product.id}>
                    <a href=${product.attributes.link}><h3>${product.attributes.name} (${product.attributes.category.name})</h3></a>
                    <h6>${product.attributes.company}</h6>
                    <h6>${product.attributes.fandom}</h6>
                    <h4>${product.attributes.price}</h4>
                    <p>${product.attributes.description}</p>
                </div><br><br>
            `;

            document.querySelector('#product-container').innerHTML += productMarkup;
        })
    })
}