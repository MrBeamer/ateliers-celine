class CreateSteps < ActiveRecord::Migration[6.0]
  def change
    create_table :steps do |t|
      t.string :title
      t.text :description
      t.string :youtube_url
      t.references :workshop, null: false, foreign_key: true

      t.timestamps
    end
  end
end
