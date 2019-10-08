class CreateProcedures < ActiveRecord::Migration[5.2]
  def change
    create_table :procedures do |t|
      t.integer :recipe_id
      t.integer :step
      t.text :description
      t.timestamps
    end

    add_index :procedures, :recipe_id
  end
end
