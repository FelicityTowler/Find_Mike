class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.references :venue, null: false, foreign_key: true
      t.time :time
      t.date :date
      t.string :bringer
      t.text :information
      t.integer :available_spots
      t.integer :total_spots
      t.integer :booked_spots

      t.timestamps
    end
  end
end
