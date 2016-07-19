require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "el usuario tiene que tener email" do    
  	user = users(:one)    
  	user.name = nil    
  	assert_not user.valid?
  end
end
