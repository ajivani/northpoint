require 'spec_helper'

describe "relationships/show.html.erb" do
  before(:each) do
    @relationship = assign(:relationship, stub_model(Relationship,
      :product_id => 1,
      :tag_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain(1.to_s)
    rendered.should contain(1.to_s)
  end
end
