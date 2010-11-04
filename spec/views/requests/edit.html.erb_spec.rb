require 'spec_helper'

describe "requests/edit.html.erb" do
  before(:each) do
    @request = assign(:request, stub_model(Request,
      :new_record? => false,
      :current_customer => "MyString",
      :company_name => "MyString",
      :customer_name => "MyString",
      :job_title => "MyString",
      :phone_number => "MyString",
      :email => "MyString",
      :city => "MyString",
      :province_or_state => "MyString",
      :quote_details => "MyText",
      :estimated_quantity_per_order => "MyText",
      :estimated_quantity_per_annum => "MyText"
    ))
  end

  it "renders the edit request form" do
    render

    rendered.should have_selector("form", :action => request_path(@request), :method => "post") do |form|
      form.should have_selector("input#request_current_customer", :name => "request[current_customer]")
      form.should have_selector("input#request_company_name", :name => "request[company_name]")
      form.should have_selector("input#request_customer_name", :name => "request[customer_name]")
      form.should have_selector("input#request_job_title", :name => "request[job_title]")
      form.should have_selector("input#request_phone_number", :name => "request[phone_number]")
      form.should have_selector("input#request_email", :name => "request[email]")
      form.should have_selector("input#request_city", :name => "request[city]")
      form.should have_selector("input#request_province_or_state", :name => "request[province_or_state]")
      form.should have_selector("textarea#request_quote_details", :name => "request[quote_details]")
      form.should have_selector("textarea#request_estimated_quantity_per_order", :name => "request[estimated_quantity_per_order]")
      form.should have_selector("textarea#request_estimated_quantity_per_annum", :name => "request[estimated_quantity_per_annum]")
    end
  end
end
