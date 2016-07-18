require 'test_helper'

class InventoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "el numero de serie debe ser unico" do    
  	i = inventories(:one)   
  	assert i.valid?,"item con serie #{i.serie} esta repetido"
  end
end
