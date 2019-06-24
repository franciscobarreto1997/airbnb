class DropCategoriesTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :flats, :category_id
    drop_table :categories
  end
end
