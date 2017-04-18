# == Schema Information
#
# Table name: coaches
#
#  id         :integer          not null, primary key
#  name       :string
#  photo      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :coach do
    name "MyString"
    photo { fixture_file_upload(Rails.root.join('spec', 'test_images', 'test.png'), 'image/png') }
  end
end
