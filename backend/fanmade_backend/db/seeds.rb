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
Category.create(name: "Stickers")
Category.create(name: "Dice")
Category.create(name: "Gaming Accessories")
Category.create(name: "Housewares")


# FANDOMS

Fandom.create(name: "Star Wars")
Fandom.create(name: "Star Trek")
Fandom.create(name: "Lord of the Rings")
Fandom.create(name: "Harry Potter")
Fandom.create(name: "Marvel")
Fandom.create(name: "DC")
Fandom.create(name: "Disney")
Fandom.create(name: "Theme Parks")
Fandom.create(name: "Dungeons and Dragons")
Fandom.create(name: "Pro-Wrestling")
Fandom.create(name: "Pokemon")
Fandom.create(name: "Movies (General)")
Fandom.create(name: "Video Games (General)")
Fandom.create(name: "Tabletop Games (General)")
Fandom.create(name: "Music (General)")
Fandom.create(name: "Books (General)")

# PRODUCTS

Product.create(name: "Amazing Ninja Dude - Michaelangelo",
               company: "Tee Fury",
               price: 42.00,
               description: "A black pullover hoodie featuring a comic image of Michaelangelo from the Ninja Turtles.",
               link: "https://teefury.com/products/sweatshirt-unisex-pullover-amazing-ninja-dude",
               img: "https://cdn.shopify.com/s/files/1/1869/0319/products/art-file-color-blk_994ab570-9e30-4ef1-80ad-7411d80740d1_650x650.jpg?v=1573359866",
               category_id: 2,
               fandom_id: 16
)

Product.create(name: "Monster Terror - Frankenstein",
               company: "Tee Fury",
               price: 38.00,
               description: "A canvas print of Frankenstein's monster. Green on a black background with scenes from the movie depicted in the face.",
               link: "https://teefury.com/products/canvas-stretched-monster-terror",
               img: "https://cdn.shopify.com/s/files/1/1869/0319/products/art-file-color-blk_9743072e-613f-4899-9e25-76d955214737_650x650.jpg?v=1572311349",
               category_id: 5,
               fandom_id: 12
)

Product.create(name: "Infinity Prism Custom Dice",
               company: "DnD Dice - Etsy",
               price: 24.99,
               description: "Fun dice!",
               link: "https://www.etsy.com/listing/912939610/infinity-prism-dichroic-glass-polyhedral?ref=sold_out_ad-1&plkey=d8b8162e98cea84bd1788026d036e4153b688f05%3A912939610&frs=1",
               img: "https://i.etsystatic.com/9821235/r/il/b9b996/3177996568/il_794xN.3177996568_m6em.jpg",
               category_id: 8,
               fandom_id: 9
)

Product.create(name: "Mos Eisley Cantina - Women's Tee",
               company: "Heroes & Villians",
               price: 30,
               description: "A light green shirt with characters from the Mos Eisley Cantina depicted, as well as retro looking yellow text.",
               link: "https://heroesvillains.com/collections/star-wars-classics/products/stw-publication-art-mg-womens-ss",
               img: "https://cdn.shopify.com/s/files/1/0017/3113/3555/products/TS9IPLSTW_1_800x.png?v=1611723045",
               category_id: 1,
               fandom_id: 1
)

Product.create(name: "100 Acre Wood Mug",
               company: "Boxlunch",
               price: 11.83,
               description: "Green mug, white silhouette.",
               link: "https://www.boxlunch.com/product/disney-winnie-the-pooh-100-acre-wood-camper-mug---boxlunch-exclusive/14306399.html?cgid=pop-culture-shop-by-license-winnie-the-pooh#start=54",
               img: "https://hottopic.scene7.com/is/image/HotTopic/14306398_hi?$productMainDesktop$",
               category_id: 10,
               fandom_id: 7
)

Product.create(name: "Nadja and Laszlo - What We Do In the Shadows",
               company: "Teepublic",
               price: 21.00,
               description: "A parody of the Fleetwood Mac album cover.",
               link: "https://www.teepublic.com/t-shirt/14334939-laszlo-and-nadja",
               img: "https://res.cloudinary.com/teepublic/image/private/s--kJre738---/t_Resized%20Artwork/c_crop,x_10,y_10/c_fit,w_447/c_crop,g_north_west,h_626,w_470,x_-22,y_-26/g_north_west,u_upload:v1462829017:production:blanks:qe3008lhp5hquxmwp4a0,x_-417,y_-351/b_rgb:eeeeee/c_limit,f_auto,h_630,q_90,w_630/v1600916241/production/designs/14334939_0.jpg",
               category_id: 1,
               fandom_id: 12
)

Product.create(name: "Stardew Valley Map",
               company: "Redbubble",
               price: 21.01,
               description: "A map!",
               link: "https://www.redbubble.com/i/art-print/Stardew-Valley-Map-by-catgardens/32713829.1G4ZT",
               img: "https://m.media-amazon.com/images/I/81ToF76YMIL._AC_SY450_.jpg",
               category_id: 5,
               fandom_id: 13
)

Product.create(name: "Townsfolk Miniatures",
               company: "TableTopWorld (Etsy)",
               price: 18.04,
               description: "A group of miniature townsfolk for your tabletop RPG needs.",
               link: "https://www.etsy.com/listing/764070486/resin-dd-townsfolk-personalities-set?ga_order=most_relevant&ga_search_type=all&ga_view_type=gallery&ga_search_query=miniatures&ref=sc_gallery-1-4&plkey=e714b586cfabda4b6d51c816d70c6ae58524fd7d%3A764070486&pro=1",
               img: "https://i.etsystatic.com/19515618/r/il/f6075b/2591345598/il_794xN.2591345598_qkg3.jpg",
               category_id: 9,
               fandom_id: 9
)

Product.create(name: "Outpost #31 T-Shirt",
               company: "Five Finger Tees",
               price: 21.00,
               description: "A weathered t-shirt depicting the setting from The Thing.",
               link: "https://www.fivefingertees.com/products/the-thing-outpost-31-t-shirt",
               img: "https://cdn.shopify.com/s/files/1/1119/4994/products/1_8658a9aa-3a00-4b3b-b5f8-601826680aff.jpg?v=1527192365",
               category_id: 1,
               fandom_id: 15
)

Product.create(name: "Elven Ear Cuffs",
               company: "Boxlunch",
               price: 10.32,
               description: "Go not to the Elves for counsel, for they will say both no and yes. Unless it's for fashion advice—it's a definite yes to these ear cuffs.",
               link: "https://www.boxlunch.com/product/the-lord-of-the-rings-elven-ear-cuffs---boxlunch-exclusive/13512873.html#q=lord%2Bof%2Bthe%2Brings&start=2",
               img: "https://hottopic.scene7.com/is/image/HotTopic/13512872_hi?$productMainDesktop$",
               category_id: 3,
               fandom_id: 3
)

Product.create(name: "Starfleet Academy Hoodie",
               company: "Etsy (JAndJoCo)",
               price: 32.65,
               description: "A pullover sweater with the Starfleet logo from Star Trek on the front.",
               link: "https://www.etsy.com/listing/891524361/starfleet-academy-adults-unisex-hoodie?ga_order=most_relevant&ga_search_type=all&ga_view_type=gallery&ga_search_query=star+trek+hoodie&ref=sr_gallery-1-4&organic_search_click=1",
               img: "https://i.etsystatic.com/25364748/r/il/420736/2608561992/il_794xN.2608561992_3oyd.jpg",
               category_id: 2,
               fandom_id: 2
)

Product.create(name: "Hobbit PO-TA-TO Cutting Board",
               company: "Etsy (LaserChimp)",
               price: 14.22,
               description: "Personalised Laser Engraved Chopping Board.",
               link: "https://www.etsy.com/listing/923526064/lord-of-the-rings-engraved-wooden?ga_order=most_relevant&ga_search_type=all&ga_view_type=gallery&ga_search_query=lord+of+the+rings+clothing&ref=sr_gallery-1-23&organic_search_click=1&pop=1",
               img: "https://i.etsystatic.com/22477312/r/il/374bbf/2981387202/il_794xN.2981387202_s7ze.jpg",
               category_id: 10,
               fandom_id: 3
)

Product.create(name: "SHIELD Academy Tank Top",
               company: "Teepublic",
               price: 14.00,
               description: "100% combed ringspun cotton. Unisex sizing and loose drape design for relaxed fit.",
               link: "https://www.teepublic.com/tank-top/469348-shield-academy-ops.-division-light-print",
               img: "https://res.cloudinary.com/teepublic/image/private/s--lp2VFmog--/t_Resized%20Artwork/c_crop,x_10,y_10/c_fit,w_470/c_crop,g_north_west,h_626,w_470,x_0,y_0/g_north_west,u_upload:v1462829015:production:blanks:mtl53ofohwq5goqjo9ke,x_-395,y_-325/b_rgb:eeeeee/c_limit,f_auto,h_630,q_90,w_630/v1459863189/production/designs/469348_1.jpg",
               category_id: 4,
               fandom_id: 5
)

Product.create(name: "Hoverboard Button Up",
               company: "RSVLTS",
               price: 65.00,
               description: "Let Griff keep his Pit Bull board with rockets and wake-board-style ropes for his friends. You can stay colorful, classy, and cool on your bright pink hoverboard—a staple of the future (of 2015).",
               link: "https://www.rsvlts.com/collections/back-to-the-future/products/back-to-the-future-hoverboard-kunuflex-short-sleeve-shirt",
               img: "https://cdn.shopify.com/s/files/1/0069/7692/products/back-to-the-future-short-sleeve-shirt-back-to-the-future-hoverboard-kunuflex-short-sleeve-shirt-30290003558558_600x_crop_center.jpg?v=1629219563",
               category_id: 4,
               fandom_id: 12
)

Product.create(name: "Harley Quinn Kanji",
               company: "Design By Humans",
               price: 26.00,
               description: "Our Clown Princess of Crime is loved all around the world in this officially licensed DC Comics apparel featuring Harley Quinn.",
               link: "https://www.designbyhumans.com/shop/t-shirt/men/dc-comics-kanji-harley-quinn/1594157/",
               img: "https://media.kohlsimg.com/is/image/kohls/5134571?wid=600&hei=600&op_sharpen=1",
               category_id: 1,
               fandom_id: 6
)

Product.create(name: "Tiki Room Sticker",
               company: "Etsy (TVTimeStickerCo",
               price: 4.00,
               description: "This sticker is perfect any one who is a fan of grabbing a Dole Whip and heading over to the Tiki, Tiki, Tiki Room.",
               link: "https://www.etsy.com/listing/827687354/barker-birdthe-tiki-roomenchanted-tiki?show_sold_out_detail=1&ref=nla_listing_details",
               img: "https://i.etsystatic.com/23264187/r/il/b5bd10/2546458915/il_794xN.2546458915_kb56.jpg",
               category_id: 7,
               fandom_id: 8
)

Product.create(name: "Monsters of Wildemount Miniatures",
               company: "Critical Role",
               price: 59.99,
               description: "Enhance your campaign with thrilling creatures straight from the world of Exandria and imagined by Matthew Mercer! Now you and your players can come face-to-face with memorable monsters like the frog-like Nergaliid, or the dreaded Husk Zombie.",
               link: "https://shop.critrole.com/collections/miniatures/products/wizkids-minis-monsters-of-wildemount-set-i",
               img: "https://cdn.shopify.com/s/files/1/0052/4809/0172/products/Monsters5_900x.png?v=1622073255",
               category_id: 9,
               fandom_id: 9
)

Product.create(name: "Feyland Spirit Sharp Edged Dice",
               company: "Awecome Dice",
               price: 33.47,
               description: "Each die features clear resin with a purple flower and flecks of gold and has an appearance of being created in the feyland. Inked in gold, Each set comes encased in a padded metal dice tin.",
               link: "https://www.awesomedice.com/collections/dungeons-dragons-dice/products/feyland-spirit-sharp-edge-dice",
               img: "https://cdn.shopify.com/s/files/1/0057/6408/7896/products/feyland-spirit-3_720x.jpg?v=1632765996",
               category_id: 8,
               fandom_id: 9
)

Product.create(name: "DND Welcome Sign",
               company: "Etsy (Mapleroo Creations)",
               price: 29.33,
               description: "This welcome sign is perfect for the Dungeons n Dragons household! Hanging from the game room door or even the front door, any RPgamer will appreciate it.",
               link: "https://www.etsy.com/listing/616535705/nerdy-welcome-sign-dnd-roll-for?ga_order=most_relevant&ga_search_type=all&ga_view_type=gallery&ga_search_query=nerd+crafts&ref=sr_gallery-1-1&organic_search_click=1&cns=1",
               img: "https://i.etsystatic.com/10639551/r/il/1faf1a/1643983117/il_794xN.1643983117_66ip.jpg",
               category_id: 6,
               fandom_id: 9
)