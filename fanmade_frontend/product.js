class Product {
    constructor(product, productAttrs){
        this.id = product.id;
        this.name = productAttrs.name;
        this.company = productAttrs.company;
        this.fandom = productAttrs.fandom;
        this.price = productAttrs.price;
        this.description = productAttrs.description;
        this.link = productAttrs.link;
        this.category = productAttrs.category
        Product.all.push(this);
    }

    function renderProduct(product) {
        const productMarkup = `
            <div data-id= ${product.id}>
                <a href=${product.link}><h3>${product.name} (${product.category.name})</h3></a>
                <h4>${product.price}</h4>
                <h6>${product.company} - ${product.fandom}</h6>
                <p>${product.description}</p>
            </div><br><br>
        `;
        document.querySelector('#product-container').innerHTML += productMarkup;
    }
}

Product.all = []