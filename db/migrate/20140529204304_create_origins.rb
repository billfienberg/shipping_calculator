class CreateOrigins < ActiveRecord::Migration
  def change
    create_table :origins do |t|

      t.timestamps
    end
  end
end
