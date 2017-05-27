class RemoveSurnameFromPlayers < ActiveRecord::Migration[5.0]
  def change
    remove_column :players, :surname, :string
  end
end
