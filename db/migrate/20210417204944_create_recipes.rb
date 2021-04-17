class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :preptime
      t.string :ingredients, array: true
      t.string :instructions
    end
    
    add_index :recipes, :ingredients, using: 'gin'
  end
end
