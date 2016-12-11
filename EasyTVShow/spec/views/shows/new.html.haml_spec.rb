require 'rails_helper'

RSpec.describe "shows/new", type: :view do
  before(:each) do
    assign(:show, Show.new(
      :code => 1,
      :title => "MyString",
      :description => "MyString"
    ))
  end

  it "renders new show form" do
    render

    assert_select "form[action=?][method=?]", shows_path, "post" do

      assert_select "input#show_code[name=?]", "show[code]"

      assert_select "input#show_title[name=?]", "show[title]"

      assert_select "input#show_description[name=?]", "show[description]"
    end
  end
end
