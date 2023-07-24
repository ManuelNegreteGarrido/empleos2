require "test_helper"

class UserTest < ActiveSupport::TestCase
  def setup
    @user = users(:two) 
    @position = positions(:two) 
  end

  test "should apply to position" do    
    assert_difference '@user.positions.count', 1 do
      @user.positions << @position
    end
  end
end

