class CreateCarrierDestinations < ActiveRecord::Migration
  def change
    create_table :carrier_destinations do |t|
      t.references :destination, index: true
      t.references :carrier, index: true

      t.timestamps
    end
  end
end
