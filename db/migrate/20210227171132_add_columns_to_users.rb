class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :stage_name, :string
    add_column :users, :telephone, :string
    add_column :users, :city, :string
    add_column :users, :biography, :text
    add_column :users, :video, :string
    add_column :users, :dependability, :float
  end
end
