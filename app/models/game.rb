# == Schema Information
#
# Table name: games
#
#  id         :integer          not null, primary key
#  season     :string           default("Турнирная таблица Первенства Украины 2017/2018")
#  body       :text
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
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

    validates :season, presence: true
    validates :body, presence: true
end
