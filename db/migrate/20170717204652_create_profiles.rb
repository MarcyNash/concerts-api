class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :user_name
      t.string :about_me

      t.timestamps
    end
  end
end
