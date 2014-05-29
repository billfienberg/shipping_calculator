class DestinationHoliday < ActiveRecord::Base
  belongs_to :destination
  belongs_to :holiday
end
