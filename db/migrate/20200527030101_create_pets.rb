class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.integer :specie
      t.belongs_to :user, foreign_key: true
    end
  end
end
