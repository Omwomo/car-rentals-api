class AddDurationToReservations < ActiveRecord::Migration[7.1]
  def change
    add_column :reservations, :duration, :integer
  end
end
