class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :color
      t.integer :doors_amount
      t.string :brand
      t.belongs_to :user, foreign_key: true
    end
  end
end
