class CreateCars < ActiveRecord::Migration[7.1]
  def change
    create_table :cars do |t|
      t.string :name
      t.string :description
      t.string :image
      t.string :rates

      t.timestamps
    end
  end
end
