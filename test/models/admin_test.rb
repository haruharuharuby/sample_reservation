require 'test_helper'

class AdminTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @admin = Admin.new(loginid: 101, name:"テスト管理者",
    password: "admin", password_confirmation: "admin")
  end

  # 有効なAdminかどうかのテスト
  # test "should be valid" do
  #   assert @admin.valid?
  # end

  # ログインIDが存在するかのテスト
  # test "loginid should be present" do
  #   @admin.loginid = " "
  #   assert_not @admin.valid?
  # end

  # 名前が存在するかのテスト
  # test "name should be present" do
  #   @admin.name = " "
  #   assert_not @admin.valid?
  # end
end
