class AddAcommodatesToFlats < ActiveRecord::Migration[5.2]
  def change
    add_column :flats, :acommodates, :integer
  end
end
