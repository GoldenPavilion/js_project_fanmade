class AddFandomIdToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :fandom_id, :integer
  end
end
