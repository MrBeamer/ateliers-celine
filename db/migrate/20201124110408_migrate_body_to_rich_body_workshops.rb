class MigrateBodyToRichBodyWorkshops < ActiveRecord::Migration[6.0]
  def up
    Workshop.find_each do |workshop|
      workshop.update(workshop_content: workshop.workshop_description)
    end
  end

  def down
    Workshop.find_each do |workshop|
      workshop.update(workshop_description: workshop.workshop_content)
      workshop.update(workshop_content: nil)
    end
  end
end
