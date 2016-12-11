require 'rails_helper'

RSpec.describe "shows/edit", type: :view do
  before(:each) do
    @show = assign(:show, Show.create!(
      :title => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit show form" do
    render

    assert_select "form[action=?][method=?]", show_path(@show), "post" do

      assert_select "input#show_title[name=?]", "show[title]"

      assert_select "input#show_description[name=?]", "show[description]"
    end
  end
end
