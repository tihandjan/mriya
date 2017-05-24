class CreateGameTranslations < ActiveRecord::Migration[5.0]
  def up
    Game.create_translation_table!({
      season: :string,
      body: :text
    }, {
      migrate_data: true
    })
  end

  def down
    Game.drop_translation_table! migrate_data: true
  end
end
