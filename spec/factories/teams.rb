# == Schema Information
#
# Table name: teams
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  slug       :string
#  photo      :string
#
# Indexes
#
#  index_teams_on_slug  (slug) UNIQUE
#

FactoryGirl.define do
  factory :team do
    name "MyString"
    photo { fixture_file_upload(Rails.root.join('spec', 'test_images', 'test.png'), 'image/png') }
  end
end
