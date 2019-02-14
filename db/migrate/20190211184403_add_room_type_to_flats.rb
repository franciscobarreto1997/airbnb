class AddRoomTypeToFlats < ActiveRecord::Migration[5.2]
  def change
    add_reference :flats, :room_type, foreign_key: true
  end
end
