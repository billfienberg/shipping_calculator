class Day < ActiveRecord::Base
  belongs_to :destination
  belongs_to :carrier
end
