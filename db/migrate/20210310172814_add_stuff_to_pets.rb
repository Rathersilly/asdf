class AddStuffToPets < ActiveRecord::Migration[6.1]
  def change

      add_column :pets, :name, :string, null: false
      add_column :pets, :species, :integer

      create_table :people_pets, id: false do |t|
        t.belongs_to :person
        t.belongs_to :pet
      end
  end

end
