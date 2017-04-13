# == Schema Information
#
# Table name: videos
#
#  id         :integer          not null, primary key
#  title      :string
#  summary    :string
#  video_url  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  slug       :string
#
# Indexes
#
#  index_videos_on_slug  (slug) UNIQUE
#

FactoryGirl.define do
  factory :video do
    title "MyString MyString"
    summary "MyString MyString"
    video_url "MyString"
  end
end
