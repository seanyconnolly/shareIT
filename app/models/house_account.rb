class HouseAccount < ActiveRecord::Base
  has_many :tenants
end
