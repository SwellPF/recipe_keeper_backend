class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :ingredients
      t.text :directions
      t.integer :category_id

      t.timestamps
    end
  end
end
