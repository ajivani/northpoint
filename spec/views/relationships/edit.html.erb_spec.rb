require 'spec_helper'

describe "relationships/edit.html.erb" do
  before(:each) do
    @relationship = assign(:relationship, stub_model(Relationship,
      :new_record? => false,
      :product_id => 1,
      :tag_id => 1
    ))
  end

  it "renders the edit relationship form" do
    render

    rendered.should have_selector("form", :action => relationship_path(@relationship), :method => "post") do |form|
      form.should have_selector("input#relationship_product_id", :name => "relationship[product_id]")
      form.should have_selector("input#relationship_tag_id", :name => "relationship[tag_id]")
    end
  end
end
