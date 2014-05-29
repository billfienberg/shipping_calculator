class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.references :destination, index: true
      t.references :carrier, index: true
      t.boolean :sn
      t.boolean :m
      t.boolean :t
      t.boolean :w
      t.boolean :r
      t.boolean :f
      t.boolean :sa

      t.timestamps
    end
  end
end
