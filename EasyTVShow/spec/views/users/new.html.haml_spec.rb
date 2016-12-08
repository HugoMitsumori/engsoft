require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      :login => "MyString",
      :email => "MyString",
      :password_digest => "MyString",
      :remember_digest => "MyString",
      :name => "MyString"
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input#user_login[name=?]", "user[login]"

      assert_select "input#user_email[name=?]", "user[email]"

      assert_select "input#user_password_digest[name=?]", "user[password_digest]"

      assert_select "input#user_remember_digest[name=?]", "user[remember_digest]"

      assert_select "input#user_name[name=?]", "user[name]"
    end
  end
end
