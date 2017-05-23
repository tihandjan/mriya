class CreatePlayerTranslations < ActiveRecord::Migration[5.0]
  def up
    Player.create_translation_table!({
      name: :string,
      surname: :string
    }, {
      migrate_data: true
    })
  end

  def down
    Player.drop_translation_table! migrate_data: true
  end
end
