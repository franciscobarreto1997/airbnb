class AddHomeTypeToFlats < ActiveRecord::Migration[5.2]
  def change
    add_reference :flats, :home_type, foreign_key: true
  end
end
