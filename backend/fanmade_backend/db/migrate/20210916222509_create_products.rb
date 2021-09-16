class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :company
      t.string :fandom
      t.decimal :price
      t.string :description
      t.string :link
      t.int :category_id

      t.timestamps
    end
  end
end
