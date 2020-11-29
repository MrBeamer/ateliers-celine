class AddArtistNameToWorkshops < ActiveRecord::Migration[6.0]
  def change
    add_column :workshops, :artist_name, :string
  end
end
