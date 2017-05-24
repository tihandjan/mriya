# == Schema Information
#
# Table name: achievements
#
#  id         :integer          not null, primary key
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_achievements_on_slug  (slug)
#

class Achievement < ApplicationRecord
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
    validates :body, presence: true
end
