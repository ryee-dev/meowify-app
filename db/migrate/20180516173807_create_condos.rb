class CreateCondos < ActiveRecord::Migration[5.2]
  def change
    create_table :condos do |t|
      t.string :name
      t.integer :capacity
      t.integer :user_id
    end
  end
end
