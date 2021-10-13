const endPoint = "http://localhost:3000/api/products"
const fandomsEndPoint = "http://localhost:3000/api/fandoms"
const catsEndPoint = "http://localhost:3000/api/categories"

document.addEventListener('DOMContentLoaded', () => {
    fetchProducts();
    //fetchCategories();
    //fetchFandoms();
    filterCategories();

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

function filterCategories(){
    const menuLinks = document.querySelectorAll(".menuLink");
    
    menuLinks.forEach(link => {
        link.addEventListener('click', function(){
            let linkID = link.id
            let aLink = document.querySelector(`#${linkID}`)
            debugger
        })
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

// function fetchCategories() {
//    fetch(catsEndPoint)
//    .then(response => response.json())
//    .then(categories => {
//        categories.data.forEach(category => {
//            let newCategory = `<a href="#" class="menuLink" id=${category.id} value="${category.attributes.name}">${category.attributes.name}</a>`;
//            document.querySelector(".cat-dropdown-content").innerHTML += newCategory;        
//        })
//    })
// }

// function fetchFandoms() {
//    fetch(fandomsEndPoint)
//    .then(response => response.json())
//    .then(fandoms => {
//        fandoms.data.forEach(fandom => {
//            let newFandom = `<a href="#" value="${fandom.attributes.name}">${fandom.attributes.name}</a>`;
//            document.querySelector(".fan-dropdown-content").innerHTML += newFandom;
//        })
//    })
//}

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

