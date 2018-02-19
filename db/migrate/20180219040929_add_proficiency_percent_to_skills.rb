class AddProficiencyPercentToSkills < ActiveRecord::Migration[5.1]
  def change
    add_column :skills, :proficiency_percent, :integer
  end
end
