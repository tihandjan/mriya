# == Schema Information
#
# Table name: leagues
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class League < ApplicationRecord
    has_many :league_teams, dependent: :destroy
    has_many :tables, dependent: :destroy
    validates :name, presence: true
end
