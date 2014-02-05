class CreatePolicies < ActiveRecord::Migration
  def change
    create_table :policies do |t|
      t.belongs_to :customer
      t.integer :policy_excess
      t.string :breakdown_cover
      t.boolean :windscreen_repair

      t.timestamps
    end
  end
end
