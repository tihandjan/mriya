# == Schema Information
#
# Table name: views
#
#  id            :integer          not null, primary key
#  viewable_type :string
#  viewable_id   :integer
#  views         :integer          default(0)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
# Indexes
#
#  index_views_on_viewable_id_and_viewable_type  (viewable_id,viewable_type)
#  index_views_on_viewable_type_and_viewable_id  (viewable_type,viewable_id)
#

FactoryGirl.define do
  factory :view do
    viewable_id 1
    viewable_type "MyString"
    views "MyString"
  end
end
