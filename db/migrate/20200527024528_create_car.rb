class CreateCar < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :color
      t.integer :doors_amount
    end
  end
end
