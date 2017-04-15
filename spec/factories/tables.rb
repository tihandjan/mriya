# == Schema Information
#
# Table name: tables
#
#  id         :integer          not null, primary key
#  points     :integer
#  team_name  :string
#  league_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_tables_on_league_id  (league_id)
#

FactoryGirl.define do
  factory :table do
    points 1
    league nil
    league_team nil
  end
end
