class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.integer :recipe_id
      t.float :quantity
      t.string :unit_of_measure
      t.string :name
      t.timestamps
    end

    add_index :ingredients, :recipe_id
  end
end
