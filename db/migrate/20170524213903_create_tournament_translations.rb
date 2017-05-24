class CreateTournamentTranslations < ActiveRecord::Migration[5.0]
  def up
    Tournament.create_translation_table!({
      title: :string,
      body: :text
    }, {
      migrate_data: true
    })
  end

  def down
    Tournament.drop_translation_table! migrate_data: true
  end
end
