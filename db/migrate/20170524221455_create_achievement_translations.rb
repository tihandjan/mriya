class CreateAchievementTranslations < ActiveRecord::Migration[5.0]
  def up 
    Achievement.create_translation_table!({
      title: :string,
      body: :text
    }, {
      migrate_data: true
    })
  end
  def down
    Achievement.drop_translation_table! migrate_data: true
  end
end
