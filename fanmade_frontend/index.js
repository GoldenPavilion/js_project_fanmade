const endPoint = "http://localhost:3000/api/products"
let allProducts = Product.all

document.addEventListener('DOMContentLoaded', () => {
    console.log("a");
    fetchProducts();
    console.log("b");
    viewAll();
    mostRecent();
    filterProduct(".catLink", "category");
    filterProduct(".fanLink", "fandom");
    deleteProduct();

    const findProductButton = document.querySelector("#add-product-button")
    const findCloseButton = document.querySelector(".close");
    const formModal = document.querySelector(".form-modal");
    const buildProductForm = document.querySelector("#new-product-form");
    
    findProductButton.addEventListener('click', function(){
        formModal.style.display = 'flex';
    })
    
    findCloseButton.addEventListener('click', function(){
        formModal.style.display = 'none';
    })
    
    buildProductForm.addEventListener("submit", (e) => handleForm(e));
})

function viewAll(){
    const viewAllButton = document.querySelector("#view-all-button");

    viewAllButton.addEventListener('click', function(){
        removeCards();
        
        allProducts.forEach(product => {
            document.querySelector('.pc-row').innerHTML += product.renderProduct();
        })
    })
}

function mostRecent(){
    const mostRecentButton = document.querySelector("#most-recent-button");

    mostRecentButton.addEventListener('click', function(){
        removeCards();

        allProducts.reverse().forEach(product => {
            document.querySelector('.pc-row').innerHTML += product.renderProduct();
        })
    })
}

function filterProduct(htmlClass, obj) {
    const links = document.querySelectorAll(`${htmlClass}`)
    
    links.forEach(link => {
        link.addEventListener('click', function(){
            let linkID = link.id;
            let linkHTML = document.querySelector(`#${linkID}`);
            let linkValue = linkHTML.getAttribute('value');
            let filteredProducts = [];

            for (let i = 0; i < allProducts.length; i++) {
                if (allProducts[i][obj].name === linkValue) {
                    filteredProducts.push(allProducts[i])
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
    console.log("c");
    fetch(endPoint)
    .then(response => response.json())
    .then(products => {
        console.log("d");
        products.data.forEach(product => {
            let newProduct = new Product(product, product.attributes);
            document.querySelector('.pc-row').innerHTML += newProduct.renderProduct();
            // Never Use This - Efficiency and Might Wipe Event Listeners 
            // document.querySelector('.pc-row').insertAdjacentHTML("beforeend", newProduct.renderProduct());
        })
    })
    console.log("e");
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
        resetForm();
    })
}

function resetForm(){
    document.querySelector("#product-name").value = '';
    document.querySelector("#product-company").value = '';
    document.querySelector("#product-fandoms").value = '';
    document.querySelector("#product-price").value = '';
    document.querySelector("#product-description").value = '';
    document.querySelector("#product-link").value = '';
    document.querySelector("#product-img").value = '';
    document.querySelector("#categories").value = '';
}

function deleteProduct(){
    let cardsList = document.querySelector(".pc-row")

    cardsList.addEventListener('click', (e) => {
        
        let target = e.target;
        if (target.className === 'delete-button'){
            const deleteObj = {
                method: "DELETE",
                headers: {"Content-Type": "application/json"}
            }
            fetch(endPoint+"/"+target.parentElement.dataset.id, deleteObj);
            target.parentElement.remove();

            allProducts = allProducts.filter(product => {
                if(product.id !== target.parentElement.dataset.id){
                    return true 
                }
            })
        }
    })
}

// arrow function versus function declaration
// study Promises
// study basic HTML formatting