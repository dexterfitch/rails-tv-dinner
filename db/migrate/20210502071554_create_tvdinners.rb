class CreateTvdinners < ActiveRecord::Migration[6.0]
  def change
    create_table :tvdinners do |t|
      t.string :name
      t.text :description
      t.integer :film_id
      t.string :recipe_ids
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
