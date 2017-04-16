class AddAvatarToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :avatarc, :string
  end
end
