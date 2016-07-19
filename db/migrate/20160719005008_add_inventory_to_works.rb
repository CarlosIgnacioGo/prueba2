class AddInventoryToWorks < ActiveRecord::Migration
  def change
    add_reference :works, :inventory, foreign_key: true
  end
end
