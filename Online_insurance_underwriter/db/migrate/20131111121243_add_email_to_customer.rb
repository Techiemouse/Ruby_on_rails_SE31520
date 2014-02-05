class AddEmailToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :email, :text
  end
end
