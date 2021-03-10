class AddColsToSits < ActiveRecord::Migration[6.1]
  def change
    add_column :sits, :duration, :integer, null: false
    add_column :sits, :untiltime, :datetime, null: false
    add_reference :sits, :person, null: false, foreign_key: true
    add_reference :sits, :sitter, null: false, foreign_key: true
  end
end
