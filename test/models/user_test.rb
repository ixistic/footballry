require 'test_helper'

class UserTest < ActiveSupport::TestCase
  setup do
    @user = users(:one)
    @admin = Role.find_by(name: "Admin")
    @regular = Role.find_by(name: "Regular")
  end

  test 'assign role' do
    @user = User.new
    @user.assign_role
    assert @user.regular?
  end

  test 'check role admin' do
    @user.role = @admin
    assert @user.admin?
  end

  test 'check role instructor' do
    @user.role = @regular
    assert @user.regular?
  end

end
