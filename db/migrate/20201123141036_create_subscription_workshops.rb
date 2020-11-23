class CreateSubscriptionWorkshops < ActiveRecord::Migration[6.0]
  def change
    create_table :subscription_workshops do |t|
      t.references :subscription, null: false, foreign_key: true
      t.references :workshop, null: false, foreign_key: true

      t.timestamps
    end
  end
end
