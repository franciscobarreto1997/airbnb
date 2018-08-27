class RemoveFlatFromCategories < ActiveRecord::Migration[5.2]
  def change
    remove_reference :categories, :flat, foreign_key: true
  end
end
