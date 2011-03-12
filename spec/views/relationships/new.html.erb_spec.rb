require 'spec_helper'

describe "relationships/new.html.erb" do
  before(:each) do
    assign(:relationship, stub_model(Relationship,
      :new_record? => true,
      :product_id => 1,
      :tag_id => 1
    ))
  end

  it "renders new relationship form" do
    render

    rendered.should have_selector("form", :action => relationships_path, :method => "post") do |form|
      form.should have_selector("input#relationship_product_id", :name => "relationship[product_id]")
      form.should have_selector("input#relationship_tag_id", :name => "relationship[tag_id]")
    end
  end
end
