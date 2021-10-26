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
                <img src=${this.img} width="300" height="300">
                <a href=${this.link} target="_blank" rel="noopener noreferrer"><h3 class="card-title">${this.name} (${this.category.name})</h3></a>
                <h4 class="price">$${this.price}</h4>
                <p>${this.company} - ${this.fandom.name}</p>
                <p>${this.description}</p>
                <button class="delete-button" type="delete" name="delete" value="Delete">Delete</button>
            </div>
        `;
    }
}

Product.all = []