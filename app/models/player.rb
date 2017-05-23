# == Schema Information
#
# Table name: players
#
#  id         :integer          not null, primary key
#  birthday   :date
#  team_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  photo      :string
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
  validates :photo, presence: true

  translates :name, :surname
  accepts_nested_attributes_for :translations, allow_destroy: true
  translation_class.validates :name, presence: true
  translation_class.validates :surname, presence: true

  mount_uploader :photo, PlayerUploader
end
