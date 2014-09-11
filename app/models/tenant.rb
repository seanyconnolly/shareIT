class Tenant < ActiveRecord::Base
  belongs_to :house_account
end
