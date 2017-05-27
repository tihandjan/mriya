# == Schema Information
#
# Table name: albums
#
#  id          :integer          not null, primary key
#  cover_photo :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  slug        :string
#
# Indexes
#
#  index_albums_on_slug  (slug) UNIQUE
#

class Album < ApplicationRecord
    extend FriendlyId
    friendly_id :title, use: [:slugged, :history, :finders]
    def should_generate_new_friendly_id?
        slug.blank? || title_changed?
    end

    translates :title
    accepts_nested_attributes_for :translations, allow_destroy: true
    translation_class.validates :title, presence: true

    has_one :view, as: :viewable
    has_many :photos, dependent: :destroy
    validates :title, presence: true
    validates :cover_photo, presence: true

    mount_uploader :cover_photo, AlbumUploader
end
