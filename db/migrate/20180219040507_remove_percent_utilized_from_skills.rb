class RemovePercentUtilizedFromSkills < ActiveRecord::Migration[5.1]
  def change
    remove_column :skills, :percent_utilized, :integer
  end
end
