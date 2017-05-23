# == Schema Information
#
# Table name: videos
#
#  id         :integer          not null, primary key
#  video_url  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  slug       :string
#
# Indexes
#
#  index_videos_on_slug  (slug) UNIQUE
#

class Video < ApplicationRecord
    extend FriendlyId
    friendly_id :title, use: [:slugged, :history, :finders]
    def should_generate_new_friendly_id?
        slug.blank? || title_changed?
    end

    translates :title, :summary
    accepts_nested_attributes_for :translations, allow_destroy: true
    translation_class.validates :title, presence: true
    
    validates :title, presence: true, length: {minimum: 10, maximum: 170}
    validates :summary, length: {maximum: 200}
    validates :video_url, presence: true

    def self.search(search)
        unless search.strip.length == 0
        if search
            where("lower(title) LIKE ?", "%#{search.downcase}%").order(created_at: :desc).last(4)
        end
        end
    end
end
