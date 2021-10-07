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

    renderProduct() {
        return `
            <div data-id= ${this.id}>
                <a href=${this.link}><h3>${this.name} (${this.category.name})</h3></a>
                <h4>${this.price}</h4>
                <h6>${this.company} - ${this.fandom}</h6>
                <p>${this.description}</p>
            </div><br><br>
        `;
    }
}

Product.all = []