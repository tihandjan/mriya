# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  album_id   :integer
#  photo      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_photos_on_album_id  (album_id)
#

class Photo < ApplicationRecord
  belongs_to :album
  validates :photo, presence: true

  mount_uploader :photo, PhotoUploader
end
