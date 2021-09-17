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
               category_id: 1
)

Product.create(name: "FMW Vintage Baseball Hat",
               company: "SPLX Apparel",
               fandom: "Pro-Wrestling",
               price: 23.99,
               description: "A black hat with the classic FMW logo on the front.",
               link: "https://suplexapparel.com/collections/summer-21/products/official-fmw-vintage-dad-hat",
               category_id: 4
)

Product.create(name: "Amazing Ninja Dude - Michaelangelo",
               company: "Tee Fury",
               fandom: "Teenage Mutant Ninja Turtles",
               price: 42.00,
               description: "A black pullover hoodie featuring a comic image of Michaelangelo from the Ninja Turtles.",
               link: "https://teefury.com/products/sweatshirt-unisex-pullover-amazing-ninja-dude",
               category_id: 2
)

Product.create(name: "Monster Terror - Frankenstein",
               company: "Tee Fury",
               fandom: "Universal Monsters",
               price: 38.00,
               description: "A canvas print of Frankenstein's monster. Green on a black background with scenes from the movie depicted in the face.",
               link: "https://teefury.com/products/canvas-stretched-monster-terror",
               category_id: 5
)

Product.create(name: "Metal Dice",
               company: "One Cool Dice Shop",
               fandom: "Roleplaying Games",
               price: 24.99,
               description: "Metal dice available in a multitude of designs and colors with a distinctly steampunk feel.",
               link: "https://www.etsy.com/listing/864177770/metal-dice-dnd-dice-set-rpg-d20?ref=shop_home_feat_1&pro=1",
               category_id: 7
)

Product.create(name: "Mos Eisley Cantina - Women's Tee",
               company: "Heroes & Villians",
               fandom: "Star Wars",
               price: 30,
               description: "A light green shirt with characters from the Mos Eisley Cantina depicted, as well as retro looking yellow text.",
               link: "https://heroesvillains.com/collections/star-wars-classics/products/stw-publication-art-mg-womens-ss",
               category_id: 1
)