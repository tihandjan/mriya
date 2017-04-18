class RemoveCoachingGroupsFromCoaches < ActiveRecord::Migration[5.0]
  def change
    remove_column :coaches, :coaching_groups, :string
  end
end
