class CreateGraduatesTranslations < ActiveRecord::Migration[5.0]
  def up
    Graduate.create_translation_table!({
      body: :text
    }, {
      migrate_data: true
    })
  end

  def down
    Graduate.drop_translation_table! migrate_data: true
  end
end
