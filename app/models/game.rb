# == Schema Information
#
# Table name: games
#
#  id         :integer          not null, primary key
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  category   :string
#
# Indexes
#
#  index_games_on_slug  (slug)
#

class Game < ApplicationRecord
    extend FriendlyId
    friendly_id :season, use: [:slugged, :history, :finders]
    def should_generate_new_friendly_id?
        slug.blank? || season_changed?
    end

    translates :body, :season
    accepts_nested_attributes_for :translations, allow_destroy: true
    translation_class.validates :body, presence: true
    translation_class.validates :season, presence: true

    validates :season, presence: true
    validates :body, presence: true
    validates :category, presence: true
end
