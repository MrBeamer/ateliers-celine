class RemovePriceColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :subscriptions, :price
  end
end
