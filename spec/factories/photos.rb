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

FactoryGirl.define do
  factory :photo do
    album nil
    photo { fixture_file_upload(Rails.root.join('spec', 'test_images', 'test.png'), 'image/png') }
  end
end
