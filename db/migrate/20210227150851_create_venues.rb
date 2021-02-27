class CreateVenues < ActiveRecord::Migration[6.0]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :address
      t.string :postcode
      t.string :telephone
      t.string :email
      t.string :website
      t.references :user, null: false, foreign_key: true
      t.boolean :verified

      t.timestamps
    end
  end
end
