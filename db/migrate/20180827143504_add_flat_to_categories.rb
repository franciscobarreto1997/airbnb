class AddFlatToCategories < ActiveRecord::Migration[5.2]
  def change
    add_reference :categories, :flat, foreign_key: true
  end
end
