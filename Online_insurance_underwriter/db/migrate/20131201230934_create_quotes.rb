class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.belongs_to :customer
      t.integer :amount
      t.string :identifier

      t.timestamps
    end
  end
end
