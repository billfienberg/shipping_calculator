class CreateTransitTimes < ActiveRecord::Migration
  def change
    create_table :transit_times do |t|
      t.references :carrier, index: true
      t.references :origin, index: true
      t.references :destination, index: true
      t.integer :number_of_days

      t.timestamps
    end
  end
end
