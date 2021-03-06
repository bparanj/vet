class CreateAnimals < ActiveRecord::Migration[5.0]
  def change
    create_table :animals do |t|
      t.string :name
      t.references :category, foreign_key: true
      t.date :born_on
      t.boolean :female

      t.timestamps
    end
  end
end
