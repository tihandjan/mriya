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
  validates :birthday, presence: true
  validates :photo, presence: true

  translates :name
  accepts_nested_attributes_for :translations, allow_destroy: true
  translation_class.validates :name, presence: true

  mount_uploader :photo, PlayerUploader

  def self.search(search)
    unless search.strip.length == 0
      if search
          with_translations(I18n.locale).where("LOWER(player_translations.name) LIKE ?", "%#{search.mb_chars.downcase.to_s}%").order(created_at: :desc).first(4)
      end
    end
  end

end
