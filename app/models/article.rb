# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  title      :string
#  body       :text
#  image      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Article < ApplicationRecord

    validates :title, presence: true, length: {minimum: 10, maximum: 200}
    validates :body,  presence: true, length: {minimum: 10, maximum: 10000}
    validates :image, presence: true

    mount_uploader :image, ArticleUploader

end