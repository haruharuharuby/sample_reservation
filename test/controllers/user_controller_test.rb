require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest

  def setup
    @user = users(:michel)
  end
end
