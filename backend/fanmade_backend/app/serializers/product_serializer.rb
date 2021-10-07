class ProductSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :company, :fandom, :price, :description, :link, :img, :category_id, :category
end
