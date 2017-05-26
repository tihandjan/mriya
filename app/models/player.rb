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

  def self.search(search)
    surname = search.split(' ')[0] || 'asdfghjkl'
    name = search.split(' ')[1] || 'asdfghjkl'
    unless search.strip.length == 0
      if search
          with_translations(I18n.locale).where("LOWER(player_translations.surname) LIKE ? OR LOWER(player_translations.surname) LIKE ? OR LOWER(player_translations.name) LIKE ? OR LOWER(player_translations.name) LIKE ?", "%#{surname.try(:downcase)}%", "%#{name.try(:downcase)}%", "%#{surname.try(:downcase)}%", "%#{name.try(:downcase)}%").order(created_at: :desc).first(4)
      end
    end
  end

end
