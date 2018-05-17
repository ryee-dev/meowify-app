class AddCondoIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :condo_id, :integer
  end
end
