class CreateSits < ActiveRecord::Migration[6.1]
  def change
    create_table :sits do |t|
      t.datetime :date, null: false
      t.string :notes


      t.timestamps
    end
  end
end
