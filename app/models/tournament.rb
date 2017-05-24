# == Schema Information
#
# Table name: tournaments
#
#  id         :integer          not null, primary key
#  kind       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  slug       :string
#
# Indexes
#
#  index_tournaments_on_slug  (slug) UNIQUE
#

class Tournament < ApplicationRecord
    extend FriendlyId
    friendly_id :title, use: [:slugged, :history, :finders]
    def should_generate_new_friendly_id?
        slug.blank? || title_changed?
    end

    translates :title, :body
    accepts_nested_attributes_for :translations, allow_destroy: true
    translation_class.validates :title, presence: true
    translation_class.validates :body, presence: true
    
    validates :title, presence: true
    validates :kind, presence: true
    validates :body, presence: true
end
