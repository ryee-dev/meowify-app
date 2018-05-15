class CreateCats < ActiveRecord::Migration[5.2]
  def change
    create_table :cats do |t|
      t.string :name
      t.string :caption

      t.string :breed
      t.string :expression
      t.string :pose

      t.timestamps
    end
  end
end
