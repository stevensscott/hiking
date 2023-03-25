class CreateHikeComments < ActiveRecord::Migration[7.0]
  def change
    create_table :hike_comments do |t|
      t.integer :hike_id
      t.integer :user_id
      t.string :comment

      t.timestamps
    end
  end
end
