class CreateSandwichIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :sandwich_ingredients do |t|
      t.string :sandwich_id
      t.string :integer
      t.string :ingredient_id
      t.string :integer

      t.timestamps
    end
  end
end
