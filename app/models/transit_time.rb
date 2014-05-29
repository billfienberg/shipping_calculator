class TransitTime < ActiveRecord::Base
  belongs_to :carrier
  belongs_to :origin
  belongs_to :destination
end
