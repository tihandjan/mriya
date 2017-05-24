class CreateMeritTranslations < ActiveRecord::Migration[5.0]
  def up
    Merit.create_translation_table!({
      merit: :string
    }, {
      migrate_data: true
    })
  end

  def down
    Merit.drop_translation_table! migrate_data: true
  end
end
