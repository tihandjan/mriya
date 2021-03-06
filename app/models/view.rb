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

class View < ApplicationRecord
    belongs_to :viewable, polymorphic: true 
end
