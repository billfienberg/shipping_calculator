class ChangeColumnNameInDayModel < ActiveRecord::Migration
  def change
    change_table :days do |t|
      t.rename :r, :thurs
    end
  end
end
