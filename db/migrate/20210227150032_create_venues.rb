class CreateVenues < ActiveRecord::Migration[6.0]
  def change
    create_table :venues do |t|
      t.string :first_name
      t.string :last_name
      t.string :stage_name
      t.string :email
      t.string :telephone
      t.string :city
      t.text :biography
      t.string :video
      t.string :dependability

      t.timestamps
    end
  end
end
