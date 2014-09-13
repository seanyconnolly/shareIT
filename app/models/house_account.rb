class HouseAccount < ActiveRecord::Base
  has_many :tenants
  has_many :bills
end
