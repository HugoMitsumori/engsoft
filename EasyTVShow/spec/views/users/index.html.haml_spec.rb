require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :login => "Login",
        :email => "Email",
        :password_digest => "Password Digest",
        :remember_digest => "Remember Digest",
        :name => "Name"
      ),
      User.create!(
        :login => "Login",
        :email => "Email",
        :password_digest => "Password Digest",
        :remember_digest => "Remember Digest",
        :name => "Name"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Login".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Password Digest".to_s, :count => 2
    assert_select "tr>td", :text => "Remember Digest".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
