class CreateConcerts < ActiveRecord::Migration[5.0]
  def change
    create_table :concerts do |t|
      t.string :artist
      t.string :venue
      t.string :city_state
      t.integer :price
      t.datetime :date
      t.text :description

      t.timestamps
    end
  end
end
