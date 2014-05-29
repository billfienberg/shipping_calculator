class CarrierDestination < ActiveRecord::Base
  belongs_to :destination
  belongs_to :carrier
end
