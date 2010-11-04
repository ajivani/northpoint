require 'spec_helper'

describe "requests/index.html.erb" do
  before(:each) do
    assign(:requests, [
      stub_model(Request,
        :current_customer => "Current Customer",
        :company_name => "Company Name",
        :customer_name => "Customer Name",
        :job_title => "Job Title",
        :phone_number => "Phone Number",
        :email => "Email",
        :city => "City",
        :province_or_state => "Province Or State",
        :quote_details => "MyText",
        :estimated_quantity_per_order => "MyText",
        :estimated_quantity_per_annum => "MyText"
      ),
      stub_model(Request,
        :current_customer => "Current Customer",
        :company_name => "Company Name",
        :customer_name => "Customer Name",
        :job_title => "Job Title",
        :phone_number => "Phone Number",
        :email => "Email",
        :city => "City",
        :province_or_state => "Province Or State",
        :quote_details => "MyText",
        :estimated_quantity_per_order => "MyText",
        :estimated_quantity_per_annum => "MyText"
      )
    ])
  end

  it "renders a list of requests" do
    render
    rendered.should have_selector("tr>td", :content => "Current Customer".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Company Name".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Customer Name".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Job Title".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Phone Number".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Email".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "City".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Province Or State".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "MyText".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "MyText".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "MyText".to_s, :count => 2)
  end
end
