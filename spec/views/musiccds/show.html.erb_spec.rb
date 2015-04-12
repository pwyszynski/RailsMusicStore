require 'rails_helper'

RSpec.describe "musiccds/show", type: :view do
  before(:each) do
    @musiccd = assign(:musiccd, Musiccd.create!(
      :title => "Title",
      :author => "Author",
      :release_year => 1,
      :price => 1.5,
      :description => "MyText",
      :cover_url => "Cover Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Author/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Cover Url/)
  end
end
