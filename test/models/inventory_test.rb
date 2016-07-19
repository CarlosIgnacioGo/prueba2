require 'test_helper'

class InventoryTest < ActiveSupport::TestCase
  def setup
    @i = inventories(:one)
  end

  test "el numero de serie debe ser unico" do       
  	assert @i.valid?,"item con serie #{@i.serie} esta repetido"
  end

  test "el tamaño del rueda debe ser mayor a 0" do    
  	assert @i.size > 0
  end
end
