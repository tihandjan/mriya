class AddBirthdayToCoaches < ActiveRecord::Migration[5.0]
  def change
    add_column :coaches, :birthday, :date
  end
end
