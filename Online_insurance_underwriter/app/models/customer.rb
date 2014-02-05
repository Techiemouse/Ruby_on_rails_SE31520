class Customer < ActiveRecord::Base

  has_one :vehicle, dependent: :destroy
  has_many :claims, dependent: :destroy
  has_one :policy, dependent: :destroy
  has_one :quote, dependent: :destroy

end
