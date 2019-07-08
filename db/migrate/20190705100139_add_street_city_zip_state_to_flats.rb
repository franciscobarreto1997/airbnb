class AddStreetCityZipStateToFlats < ActiveRecord::Migration[5.2]
  def change
    add_column :flats, :street, :string
    add_column :flats, :city, :string
    add_column :flats, :zip, :string
    add_column :flats, :state, :string
  end
end
