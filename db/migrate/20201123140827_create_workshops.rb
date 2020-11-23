class CreateWorkshops < ActiveRecord::Migration[6.0]
  def change
    create_table :workshops do |t|
      t.string :category
      t.string :workshop_description
      t.string :name
      t.string :artist_description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
