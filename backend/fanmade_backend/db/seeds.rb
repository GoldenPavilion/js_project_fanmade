# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# CATEGORIES

Category.create(name: "T-Shirts")
Category.create(name: "Hoodies and Sweatshirts")
Category.create(name: "Jewelry")
Category.create(name: "Other Clothing")
Category.create(name: "Art Prints and Posters")
Category.create(name: "Crafts")
Category.create(name: "Dice")
Category.create(name: "Gaming Accessories")

# PRODUCTS

Product.create(name: "Terry Funk X SPLX",
               company: "SPLX Apparel",
               fandom: "Pro-Wrestling",
               price: 26.99,
               description: "An orange and black t-shirt celebrating wrestling legend Terry Funk.",
               link: "https://suplexapparel.com/collections/t-shirts/products/official-terry-funk-x-splx-t-shirt-red",
               img: "https://cdn.shopify.com/s/files/1/0372/2294/0810/products/TERRY-FUNK-2_720x.jpg?v=1619881815",
               category_id: 1
)

Product.create(name: "FMW Vintage Baseball Hat",
               company: "SPLX Apparel",
               fandom: "Pro-Wrestling",
               price: 23.99,
               description: "A black hat with the classic FMW logo on the front.",
               link: "https://suplexapparel.com/collections/summer-21/products/official-fmw-vintage-dad-hat",
               img: "https://cdn.shopify.com/s/files/1/0372/2294/0810/products/FMW-HAT2_720x.jpg?v=1628714250",
               category_id: 4
)

Product.create(name: "Amazing Ninja Dude - Michaelangelo",
               company: "Tee Fury",
               fandom: "Teenage Mutant Ninja Turtles",
               price: 42.00,
               description: "A black pullover hoodie featuring a comic image of Michaelangelo from the Ninja Turtles.",
               link: "https://teefury.com/products/sweatshirt-unisex-pullover-amazing-ninja-dude",
               img: "https://cdn.shopify.com/s/files/1/1869/0319/products/art-file-color-blk_994ab570-9e30-4ef1-80ad-7411d80740d1_650x650.jpg?v=1573359866",
               category_id: 2
)

Product.create(name: "Monster Terror - Frankenstein",
               company: "Tee Fury",
               fandom: "Universal Monsters",
               price: 38.00,
               description: "A canvas print of Frankenstein's monster. Green on a black background with scenes from the movie depicted in the face.",
               link: "https://teefury.com/products/canvas-stretched-monster-terror",
               img: "https://cdn.shopify.com/s/files/1/1869/0319/products/art-file-color-blk_9743072e-613f-4899-9e25-76d955214737_650x650.jpg?v=1572311349",
               category_id: 5
)

Product.create(name: "Infinity Prism Custom Dice",
               company: "DnD Dice - Etsy",
               fandom: "Roleplaying Games",
               price: 24.99,
               description: "Fun dice!",
               link: "https://www.etsy.com/listing/912939610/infinity-prism-dichroic-glass-polyhedral?ref=sold_out_ad-1&plkey=d8b8162e98cea84bd1788026d036e4153b688f05%3A912939610&frs=1",
               img: "https://i.etsystatic.com/9821235/r/il/b9b996/3177996568/il_794xN.3177996568_m6em.jpg",
               category_id: 7
)

Product.create(name: "Mos Eisley Cantina - Women's Tee",
               company: "Heroes & Villians",
               fandom: "Star Wars",
               price: 30,
               description: "A light green shirt with characters from the Mos Eisley Cantina depicted, as well as retro looking yellow text.",
               link: "https://heroesvillains.com/collections/star-wars-classics/products/stw-publication-art-mg-womens-ss",
               img: "https://cdn.shopify.com/s/files/1/0017/3113/3555/products/TS9IPLSTW_1_800x.png?v=1611723045",
               category_id: 1
)