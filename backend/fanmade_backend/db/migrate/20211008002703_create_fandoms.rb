class CreateFandoms < ActiveRecord::Migration[6.1]
  def change
    create_table :fandoms do |t|
      t.string :name

      t.timestamps
    end
  end
end
