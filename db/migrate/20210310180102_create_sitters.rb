class CreateSitters < ActiveRecord::Migration[6.1]
  def change
    create_table :sitters do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
