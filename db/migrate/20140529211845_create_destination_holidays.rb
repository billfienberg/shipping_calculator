class CreateDestinationHolidays < ActiveRecord::Migration
  def change
    create_table :destination_holidays do |t|
      t.references :destination, index: true
      t.references :holiday, index: true

      t.timestamps
    end
  end
end
