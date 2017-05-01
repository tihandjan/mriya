class CreateTournaments < ActiveRecord::Migration[5.0]
  def change
    create_table :tournaments do |t|
      t.string :kind
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
