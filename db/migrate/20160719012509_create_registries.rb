class CreateRegistries < ActiveRecord::Migration
  def change
    create_table :registries do |t|
      t.text :description

      t.timestamps null: false
    end
  end
end
