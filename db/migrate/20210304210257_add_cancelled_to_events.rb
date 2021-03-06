class AddCancelledToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :cancelled, :boolean, default: false
  end
end
