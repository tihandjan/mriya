# == Schema Information
#
# Table name: teams
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  slug       :string
#  photo      :string
#
# Indexes
#
#  index_teams_on_slug  (slug) UNIQUE
#

class Team < ApplicationRecord
    extend FriendlyId
    friendly_id :name, use: [:slugged, :history, :finders]
    def should_generate_new_friendly_id?
        slug.blank? || name_changed?
    end

    has_many :players
    has_many :partnership
    has_many :coaches, through: :partnership
    validates :name, presence: true
    validates :photo, presence: true

    mount_uploader :photo, TeamUploader
end
