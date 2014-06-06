class ChangeStatusColumnOfCarriersTableToDefaultToTrue < ActiveRecord::Migration
  def change
    change_column_default(:carriers, :status, true)
  end
end
