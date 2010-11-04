class CreateRequests < ActiveRecord::Migration
  def self.up
    create_table :requests do |t|
      t.string :current_customer
      t.string :company_name
      t.string :customer_name
      t.string :job_title
      t.string :phone_number
      t.string :email
      t.string :city
      t.string :province_or_state
      t.text :quote_details
      t.text :estimated_quantity_per_order
      t.text :estimated_quantity_per_annum

      t.timestamps
    end
  end

  def self.down
    drop_table :requests
  end
end
