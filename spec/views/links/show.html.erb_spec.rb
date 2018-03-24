require 'rails_helper'

RSpec.describe "links/show", type: :view do
  before(:each) do
    @link = assign(:link, Link.create!(
      :given_url => "Given Url",
      :slug => "Slug",
      :clicks => 2,
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Given Url/)
    expect(rendered).to match(/Slug/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Title/)
  end
end
