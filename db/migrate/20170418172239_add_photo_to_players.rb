class AddPhotoToPlayers < ActiveRecord::Migration[5.0]
  def change
    add_column :players, :photo, :string
  end
end
