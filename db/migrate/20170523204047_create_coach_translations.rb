class CreateCoachTranslations < ActiveRecord::Migration[5.0]
  def up
    Coach.create_translation_table!({
      name: :string
    }, {
      migrate_data: true
    })
  end

  def down
    Coach.drop_translation_table! migrate_data: true
  end
end
