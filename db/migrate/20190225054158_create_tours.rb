class CreateTours < ActiveRecord::Migration[5.2]
  def change
    create_table :tours do |t|
      t.string :title
      t.string :location
      t.text :description
      t.integer :price
      t.references :user, foreign_key: true
      t.date :date
      t.integer :capacity

      t.timestamps
    end
  end
end
