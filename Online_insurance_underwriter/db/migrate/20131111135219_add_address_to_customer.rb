class AddAddressToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :street, :string
    add_column :customers, :city, :string
    add_column :customers, :county, :string
    add_column :customers, :postcode, :string
  end
end
