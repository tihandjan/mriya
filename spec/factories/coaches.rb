# == Schema Information
#
# Table name: coaches
#
#  id         :integer          not null, primary key
#  photo      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  birthday   :date
#

FactoryGirl.define do
  factory :coach do
    name "MyString"
    birthday "2017-04-14"
    photo { fixture_file_upload(Rails.root.join('spec', 'test_images', 'test.png'), 'image/png') }
  end
end
