# == Schema Information
#
# Table name: players
#
#  id         :integer          not null, primary key
#  birthday   :date
#  team_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  photo      :string
#
# Indexes
#
#  index_players_on_team_id  (team_id)
#

FactoryGirl.define do
  factory :player do
    name "MyString"
    birthday "2017-04-14"
    photo { fixture_file_upload(Rails.root.join('spec', 'test_images', 'test.png'), 'image/png') }
    team nil
  end
end
