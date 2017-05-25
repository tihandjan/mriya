# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  image      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  slug       :string
#
# Indexes
#
#  index_articles_on_slug  (slug) UNIQUE
#

class Article < ApplicationRecord
    extend FriendlyId
    friendly_id :title, use: [:slugged, :history, :finders]
    def should_generate_new_friendly_id?
        slug.blank? || title_changed?
    end

    translates :title, :body
    accepts_nested_attributes_for :translations, allow_destroy: true
    translation_class.validates :title, presence: true
    translation_class.validates :body, presence: true

    validates :title, presence: true, length: {minimum: 10, maximum: 200}
    validates :body,  presence: true, length: {minimum: 10, maximum: 10000}
    validates :image, presence: true

    mount_uploader :image, ArticleUploader

    def self.search(search)
      unless search.strip.length == 0
        if search
            with_translations(I18n.locale).where("LOWER(article_translations.title) LIKE ?", "%#{search.downcase}%").order(created_at: :desc).first(4)
        end
      end
    end

end
