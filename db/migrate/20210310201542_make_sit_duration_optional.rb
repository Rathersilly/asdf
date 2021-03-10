class MakeSitDurationOptional < ActiveRecord::Migration[6.1]
  def up
    change_column_null :sits, :duration, true
  end
  def down
    change_column :sits, :duration, :integer
  end
end
