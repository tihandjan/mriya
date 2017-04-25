class CreateSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :schedules do |t|
      t.string :team
      t.string :coach
      t.string :stadium
      t.string :mon
      t.string :tue
      t.string :wed
      t.string :thu
      t.string :fri
      t.string :sat
      t.string :sun

      t.timestamps
    end
  end
end
