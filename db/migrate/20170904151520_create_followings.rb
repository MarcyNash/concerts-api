class CreateFollowings < ActiveRecord::Migration[5.0]
  def change
    create_table :followings do |t|
      t.integer :profile_id, null: false, index: true
      t.integer :following_id, null: false, index: true

      t.timestamps null: false
    end
  end
end
