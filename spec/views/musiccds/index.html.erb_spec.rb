require 'rails_helper'

RSpec.describe "musiccds/index", type: :view do
  before(:each) do
    assign(:musiccds, [
      Musiccd.create!(
        :title => "Title",
        :author => "Author",
        :release_year => 1,
        :price => 1.5,
        :description => "MyText",
        :cover_url => "Cover Url"
      ),
      Musiccd.create!(
        :title => "Title",
        :author => "Author",
        :release_year => 1,
        :price => 1.5,
        :description => "MyText",
        :cover_url => "Cover Url"
      )
    ])
  end

  it "renders a list of musiccds" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Cover Url".to_s, :count => 2
  end
end
