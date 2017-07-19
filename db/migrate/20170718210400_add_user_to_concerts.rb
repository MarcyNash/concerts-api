class AddUserToConcerts < ActiveRecord::Migration[5.0]
  def change
    add_reference :concerts, :user, foreign_key: true
  end
end
