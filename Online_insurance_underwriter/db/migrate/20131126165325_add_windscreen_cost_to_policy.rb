class AddWindscreenCostToPolicy < ActiveRecord::Migration
  def change
    add_column :policies, :windscreen_cost, :integer
  end
end
