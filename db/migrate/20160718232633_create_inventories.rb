class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.integer :serie, null: false, unique: true
      t.integer :size
      t.string :description
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
