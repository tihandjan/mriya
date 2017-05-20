class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.text :russian
      t.text :ukrainian
      t.text :english

      t.timestamps
    end
  end
end
