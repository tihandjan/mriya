# == Schema Information
#
# Table name: tournaments
#
#  id         :integer          not null, primary key
#  kind       :string
#  title      :string
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  slug       :string
#
# Indexes
#
#  index_tournaments_on_slug  (slug) UNIQUE
#

FactoryGirl.define do
  factory :tournament do
    kind "MyString"
    title "MyString"
    body "MyText"
  end
end
