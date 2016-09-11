class CreateRods < ActiveRecord::Migration
  def change
    create_table :rods do |t|
      t.string :name
      t.decimal :price_painted
      t.decimal :price_plated
      t.string :photo
      t.string :model
      t.string :rod_length

      t.timestamps null: false
    end
  end
end
