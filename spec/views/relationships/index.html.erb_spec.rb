require 'spec_helper'

describe "relationships/index.html.erb" do
  before(:each) do
    assign(:relationships, [
      stub_model(Relationship,
        :product_id => 1,
        :tag_id => 1
      ),
      stub_model(Relationship,
        :product_id => 1,
        :tag_id => 1
      )
    ])
  end

  it "renders a list of relationships" do
    render
    rendered.should have_selector("tr>td", :content => 1.to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => 1.to_s, :count => 2)
  end
end
