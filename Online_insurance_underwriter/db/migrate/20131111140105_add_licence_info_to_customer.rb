class AddLicenceInfoToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :current_licence, :string
    add_column :customers, :licence_period, :integer
    add_column :customers, :occupation, :string
  end
end
