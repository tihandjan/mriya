# == Schema Information
#
# Table name: partnerships
#
#  id         :integer          not null, primary key
#  team_id    :integer
#  coach_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_partnerships_on_coach_id  (coach_id)
#  index_partnerships_on_team_id   (team_id)
#

class Partnership < ApplicationRecord
  belongs_to :team
  belongs_to :coach
end
