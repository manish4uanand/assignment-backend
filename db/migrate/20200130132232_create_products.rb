class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price, default: 0, precision: 8, scale: 2
      t.string :material
      t.string :category
      t.string :color

      t.timestamps
    end
  end
end
