class CreateVideoTranslations < ActiveRecord::Migration[5.0]
  def up 
    Video.create_translation_table!({
      title: :string,
      summary: :string
    }, {
      migrate_data: true
    })
  end
  def down
    Video.drop_translation_table! migrate_data: true
  end
end
