class AddOriginsDescriptionToWorkshops < ActiveRecord::Migration[6.0]
  def change
    add_column :workshops, :origins_description, :string
  end
end
