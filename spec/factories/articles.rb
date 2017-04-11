# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  title      :string
#  body       :text
#  image      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :article do
    title "MyString"
    body "MyText"
    image "MyString"
  end
end
