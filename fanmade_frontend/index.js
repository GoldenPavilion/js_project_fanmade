const endPoint = "http://localhost:3000/api/products"

document.addEventListener('DOMContentLoaded', () => {
    fetchProducts();
    filterCategories();
    filterFandoms();

    const findProductButton = document.querySelector("#add-product-button")
    const findCloseButton = document.querySelector(".close");
    const formModal = document.querySelector(".form-modal");
    const buildProductForm = document.querySelector("#new-product-form");
    const viewAllButton = document.querySelector("#view-all-button");

    viewAllButton.addEventListener('click', function(){
        let cards = document.querySelectorAll(".card")
        cards.forEach(card => {
            card.remove();
        })
        fetchProducts();
    })

    findProductButton.addEventListener('click', function(){
        formModal.style.display = 'flex';
    })
    
    findCloseButton.addEventListener('click', function(){
        formModal.style.display = 'none';
    })
    
    buildProductForm.addEventListener("submit", (e) => handleForm(e));
})

function filterCategories(){
    // grabbing all of the HTML with class catLink
    const catLinks = document.querySelectorAll(".catLink");
    
    // loop through each link in catLinks
    catLinks.forEach(link => {
        // listen for a user's click on a link
        link.addEventListener('click', function(){
            // create variable that grabs the id of the link
            let linkID = link.id;
            // create variable that grabs the link's HTML data based on its id
            let linkHTML = document.querySelector(`#${linkID}`);
            // create variable that grabs the value from the link's HTML data 
            let linkValue = linkHTML.getAttribute('value');
            // create a variable that represents all Product objects in an array
            let products = Product.all;
            // create an empty array to insert products after they are filtered
            let filteredProducts = [];
            
            // start a for loop through all of the products
            for (let i = 0; i < products.length; i++) {
                // if a products' category name is equal to the value of a link
                // push that product into the filteredProducts array
                if (products[i].category.name === linkValue) {
                    filteredProducts.push(products[i])
                }
            }
            
            // go through each card in the cards Node and remove it
            removeCards();

            // go through the newly constructed filteredProducts array and render each product
            // into pc-row
            filteredProducts.forEach(product => {
                document.querySelector('.pc-row').innerHTML += product.renderProduct();
            })
        })
    })
}

function filterFandoms(){
    const fanLinks = document.querySelectorAll(".fanLink");
    
    fanLinks.forEach(link => {
        link.addEventListener('click', function(){
            let linkID = link.id;
            let linkHTML = document.querySelector(`#${linkID}`);
            let linkValue = linkHTML.getAttribute('value');
            let products = Product.all;
            let filteredProducts = [];

            for (let i = 0; i < products.length; i++) {
                if (products[i].fandom.name === linkValue) {
                    filteredProducts.push(products[i])
                }
            }

            removeCards();

            filteredProducts.forEach(product => {
                document.querySelector('.pc-row').innerHTML += product.renderProduct();
            })
        })
    })
}

function removeCards() {
    let cards = document.querySelectorAll(".card")

    cards.forEach(card => {
        card.remove();
    })
}

function fetchProducts() {
    fetch(endPoint)
    .then(response => response.json())
    .then(products => {
        products.data.forEach(product => {
            let newProduct = new Product(product, product.attributes);
            document.querySelector('.pc-row').innerHTML += newProduct.renderProduct();
        })
    })
}

function handleForm(e) {
    e.preventDefault();
    const inputName = document.querySelector("#product-name").value;
    const inputCompany = document.querySelector("#product-company").value;
    const inputFandom = parseInt(document.querySelector("#product-fandoms").value);
    const inputPrice = document.querySelector("#product-price").value;
    const inputDesc = document.querySelector("#product-description").value;
    const inputLink = document.querySelector("#product-link").value;
    const inputImg = document.querySelector("#product-img").value;
    const inputCategory = parseInt(document.querySelector("#categories").value);
    postProduct(inputName, inputCompany, inputFandom, inputPrice, inputDesc, inputLink, inputImg, inputCategory);
}

function postProduct(name, company, fandom, price, desc, link, img, category){

    fetch(endPoint, {
        method: "POST",
        headers: {"Content-Type": "application/json"},
        body: JSON.stringify({
            name: name, 
            company: company, 
            fandom_id: fandom, 
            price: price, 
            description: desc,
            link: link,
            img: img,
            category_id: category     
        })
    })
    .then(response => response.json())
    .then(productResp => {
        const product = productResp.data;
        let newProduct = new Product(product, product.attributes);
        document.querySelector('.pc-row').innerHTML += newProduct.renderProduct();
    })
}