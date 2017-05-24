class CreateScheduleTranslations < ActiveRecord::Migration[5.0]
  def up
    Schedule.create_translation_table!({
      coach: :string
    }, {
      migrate_data: true
    })
  end

  def down
    Schedule.drop_translation_table! migrate_data: true
  end
end
