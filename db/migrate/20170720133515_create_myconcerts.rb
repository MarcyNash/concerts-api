class CreateMyconcerts < ActiveRecord::Migration[5.0]
  def change
    create_table :myconcerts do |t|
      t.references :profile, foreign_key: true, null: false, index: true
      t.references :concert, foreign_key: true, null: false, index: true

      t.timestamps null: false
    end
  end
end
