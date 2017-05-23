class CreateAlbumTranslations < ActiveRecord::Migration[5.0]
  def up
    Album.create_translation_table!({
      title: :string
    }, {
      migrate_data: true
    })
  end

  def down
    Album.drop_translation_table! migrate_data: true
  end
end
