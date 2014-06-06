class AddStatusToCarriers < ActiveRecord::Migration
  def change
    add_column :carriers, :status, :boolean
  end
end
