class ModifyReviews < ActiveRecord::Migration[6.0]
  def change
    remove_column :reviews, :subscription_id
    add_reference :reviews, :workshop, index: true
    add_reference :reviews, :user, index: true
  end
end
