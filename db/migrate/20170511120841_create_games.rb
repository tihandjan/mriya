class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :season, default: 'Турнирная таблица Первенства Украины 2017/2018'
      t.text :body
      t.string :slug, unique: true

      t.timestamps
    end
    add_index :games, [:slug]
  end
end
