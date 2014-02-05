class CreateClaims < ActiveRecord::Migration
  def change
    create_table :claims do |t|
      t.belongs_to :customer
      t.date :date_of_incident
      t.integer :value
      t.string :type_of_incident
      t.string :description

      t.timestamps
    end
  end
end
