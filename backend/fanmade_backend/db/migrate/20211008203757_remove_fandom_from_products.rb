class RemoveFandomFromProducts < ActiveRecord::Migration[6.1]
  def change
    remove_column :products, :fandom, :string
  end
end
