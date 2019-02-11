class CreateHomeTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :home_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
