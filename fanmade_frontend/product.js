class Product {
    constructor(product, productAttrs){
        this.id = product.id;
        this.name = productAttrs.name;
        this.company = productAttrs.company;
        this.fandom = productAttrs.fandom;
        this.price = productAttrs.price;
        this.description = productAttrs.description;
        this.link = productAttrs.link;
        this.img = productAttrs.img;
        this.category = productAttrs.category
        Product.all.push(this);
    }

    renderProduct() {
        return `
            <div class="card" data-id= ${this.id}>
                <a href=${this.link}><h3>${this.name} (${this.category.name})</h3></a>
                <img src=${this.img} width="400" height="400">
                <h4>${this.price}</h4>
                <p>${this.company} - ${this.fandom.name}</p>
                <p>${this.description}</p>
            </div><br><br>
        `;
    }
}

Product.all = []