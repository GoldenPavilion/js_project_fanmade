class ProductSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :company, :fandom, :price, :description, :link, :category_id, :category
end
