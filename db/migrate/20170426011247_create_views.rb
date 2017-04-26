class CreateViews < ActiveRecord::Migration[5.0]
  def change
    create_table :views do |t|
      t.belongs_to :viewable, polymorphic: true
      t.integer :views, default: 0

      t.timestamps
    end
    add_index :views, [:viewable_id, :viewable_type]
  end
end
