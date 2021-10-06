class Product {
    constructor(product, productAttrs){
        this.id = product.id;
        this.name = productAttrs.name;
        this.company = productAttrs.company;
        this.fandom = productAttrs.fandom;
        this.price = productAttrs.price;
        this.description = productAttrs.description;
        this.link = productAttrs.link;
        this.category_id = productAttrs.category_id;
    }
}