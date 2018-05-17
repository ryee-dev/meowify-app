class AddCatIdToCondos < ActiveRecord::Migration[5.2]
  def change
    add_column :condos, :cat_id, :integer
  end
end
