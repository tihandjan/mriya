# == Schema Information
#
# Table name: albums
#
#  id          :integer          not null, primary key
#  title       :string
#  cover_photo :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Album < ApplicationRecord
    has_one :view, as: :viewable
    has_many :photos
    validates :title, presence: true
    validates :cover_photo, presence: true

    mount_uploader :cover_photo, AlbumUploader
end
