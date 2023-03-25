class CreateHikes < ActiveRecord::Migration[7.0]
  def change
    create_table :hikes do |t|
      t.string :name
      t.string :address
      t.integer :distance
      t.string :difficulty
      t.boolean :pets_allowed

      t.timestamps
    end
  end
end
