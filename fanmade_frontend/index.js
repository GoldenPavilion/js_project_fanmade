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
            let newProduct = new Product(product, product.attributes);
            
            document.querySelector('#product-container').innerHTML += newProduct.renderProduct();
        })
    })
}

function handleForm(e) {
    e.preventDefault();
    const inputName = document.querySelector("#product-name").value;
    const inputCompany = document.querySelector("#product-company").value;
    const inputFandom = document.querySelector("#product-fandom").value;
    const inputPrice = document.querySelector("#product-price").value;
    const inputDesc = document.querySelector("#product-description").value;
    const inputLink = document.querySelector("#product-link").value;
    const inputCategory = parseInt(document.querySelector("#categories").value)
    postProduct(inputName, inputCompany, inputFandom, inputPrice, inputDesc, inputLink, inputCategory);
}

function postProduct(name, company, fandom, price, desc, link, category){

    fetch(endPoint, {
        method: "POST",
        headers: {"Content-Type": "application/json"},
        body: JSON.stringify({
            name: name, 
            company: company, 
            fandom: fandom, 
            price: price, 
            description: desc,
            link: link,
            category_id: category     
        })
    })
    .then(response => response.json())
    .then(productResp => {
        const product = productResp.data;
        let newProduct = new Product(product, product.attributes);
        document.querySelector('#product-container').innerHTML += newProduct.renderProduct();
    })
}

