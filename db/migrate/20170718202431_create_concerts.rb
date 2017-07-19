class CreateConcerts < ActiveRecord::Migration[5.0]
  def change
    create_table :concerts do |t|
      t.string :concert_name
      t.date :concert_date
      t.time :concert_time
      t.string :artist
      t.string :venue
      t.string :venue_address
      t.numeric :cost

      t.timestamps
    end
  end
end
