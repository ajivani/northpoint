require 'spec_helper'

describe "requests/show.html.erb" do
  before(:each) do
    @request = assign(:request, stub_model(Request,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain("Current Customer".to_s)
    rendered.should contain("Company Name".to_s)
    rendered.should contain("Customer Name".to_s)
    rendered.should contain("Job Title".to_s)
    rendered.should contain("Phone Number".to_s)
    rendered.should contain("Email".to_s)
    rendered.should contain("City".to_s)
    rendered.should contain("Province Or State".to_s)
    rendered.should contain("MyText".to_s)
    rendered.should contain("MyText".to_s)
    rendered.should contain("MyText".to_s)
  end
end
