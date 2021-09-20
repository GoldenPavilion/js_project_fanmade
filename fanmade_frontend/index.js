const endPoint = "http://localhost:3000/api/products"

document.addEventListener('DOMContentLoaded', () => {
    fetchProducts();

    const buildProductForm = document.querySelector("#new-product-form");

    buildProductForm.addEventListener("submit", (e) => handleForm(e));
})

function fetchProducts() {
    fetch(endPoint)
    .then(response => response.json())
    .then(products => {
        products.data.forEach(product => {
            const productMarkup = `
                <div data-id= ${product.id}>
                    <a href=${product.attributes.link}><h3>${product.attributes.name} (${product.attributes.category.name})</h3></a>
                    <h4>${product.attributes.price}</h4>
                    <h6>${product.attributes.company} - ${product.attributes.fandom}</h6>
                    <p>${product.attributes.description}</p>
                </div><br><br>
            `;

            document.querySelector('#product-container').innerHTML += productMarkup;
        })
    })
}

function handleForm(e) {
    e.preventDefault();
    console.log(e);
}