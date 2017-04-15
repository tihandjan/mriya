class CreateCoaches < ActiveRecord::Migration[5.0]
  def change
    create_table :coaches do |t|
      t.string :name
      t.string :photo
      t.string :coaching_groups

      t.timestamps
    end
  end
end
