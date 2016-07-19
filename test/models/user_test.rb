require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "el usuario tiene que tener email" do    
  	user = users(:one)    
  	user.name = nil    
  	assert_not user.valid?
  end

  test "un trabajo tiene un usuario" do    
  	assert_equal works(:one).user_id, users(:one).id
  end
end
