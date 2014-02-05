class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
     t.belongs_to :customer
     #takes primary key and puts it as foreign key in vehicle table
      t.string :vehicle_reg
      t.integer :annual_mileage
      t.integer :vehicle_value
      t.string :parking_location
      t.date :policy_start_date

      t.timestamps
    end
  end
end
