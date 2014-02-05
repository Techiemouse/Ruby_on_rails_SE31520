class AddDateOfBirthToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :date_of_birth, :date
  end
end
