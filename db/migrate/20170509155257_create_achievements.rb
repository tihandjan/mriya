class CreateAchievements < ActiveRecord::Migration[5.0]
  def change
    create_table :achievements do |t|
      t.string :title
      t.text :body
      t.string :slug, unique: true

      t.timestamps
    end
    add_index :achievements, [:slug]
  end
end
