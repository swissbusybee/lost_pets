class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :species
      t.string :location_found
      t.date :found_at

      t.timestamps
    end
  end
end
