# == Schema Information
#
# Table name: albums
#
#  id          :integer          not null, primary key
#  title       :string
#  cover_photo :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  slug        :string
#
# Indexes
#
#  index_albums_on_slug  (slug) UNIQUE
#

FactoryGirl.define do
  factory :album do
    title "MyString"
    cover_photo { fixture_file_upload(Rails.root.join('spec', 'test_images', 'test.png'), 'image/png') }
  end
end
