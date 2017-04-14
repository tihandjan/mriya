# == Schema Information
#
# Table name: players
#
#  id         :integer          not null, primary key
#  name       :string
#  surname    :string
#  birthday   :date
#  team_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_players_on_team_id  (team_id)
#

class Player < ApplicationRecord
  belongs_to :team
  validates :name, presence: true
  validates :surname, presence: true
  validates :birthday, presence: true
end
