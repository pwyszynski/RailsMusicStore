require 'rails_helper'

RSpec.describe "musiccds/new", type: :view do
  before(:each) do
    assign(:musiccd, Musiccd.new(
      :title => "MyString",
      :author => "MyString",
      :release_year => 1,
      :price => 1.5,
      :description => "MyText",
      :cover_url => "MyString"
    ))
  end

  it "renders new musiccd form" do
    render

    assert_select "form[action=?][method=?]", musiccds_path, "post" do

      assert_select "input#musiccd_title[name=?]", "musiccd[title]"

      assert_select "input#musiccd_author[name=?]", "musiccd[author]"

      assert_select "input#musiccd_release_year[name=?]", "musiccd[release_year]"

      assert_select "input#musiccd_price[name=?]", "musiccd[price]"

      assert_select "textarea#musiccd_description[name=?]", "musiccd[description]"

      assert_select "input#musiccd_cover_url[name=?]", "musiccd[cover_url]"
    end
  end
end
