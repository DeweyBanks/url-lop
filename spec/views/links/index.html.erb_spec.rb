require 'rails_helper'

RSpec.describe "links/index", type: :view do
  before(:each) do
    assign(:links, [
      Link.create!(
        :given_url => "Given Url",
        :slug => "Slug",
        :clicks => 2,
        :title => "Title"
      ),
      Link.create!(
        :given_url => "Given Url",
        :slug => "Slug",
        :clicks => 2,
        :title => "Title"
      )
    ])
  end

  it "renders a list of links" do
    render
    assert_select "tr>td", :text => "Given Url".to_s, :count => 2
    assert_select "tr>td", :text => "Slug".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
