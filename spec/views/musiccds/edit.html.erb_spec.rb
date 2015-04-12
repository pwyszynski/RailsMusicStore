require 'rails_helper'

RSpec.describe "musiccds/edit", type: :view do
  before(:each) do
    @musiccd = assign(:musiccd, Musiccd.create!(
      :title => "MyString",
      :author => "MyString",
      :release_year => 1,
      :price => 1.5,
      :description => "MyText",
      :cover_url => "MyString"
    ))
  end

  it "renders the edit musiccd form" do
    render

    assert_select "form[action=?][method=?]", musiccd_path(@musiccd), "post" do

      assert_select "input#musiccd_title[name=?]", "musiccd[title]"

      assert_select "input#musiccd_author[name=?]", "musiccd[author]"

      assert_select "input#musiccd_release_year[name=?]", "musiccd[release_year]"

      assert_select "input#musiccd_price[name=?]", "musiccd[price]"

      assert_select "textarea#musiccd_description[name=?]", "musiccd[description]"

      assert_select "input#musiccd_cover_url[name=?]", "musiccd[cover_url]"
    end
  end
end
