# == Schema Information
#
# Table name: merits
#
#  id         :integer          not null, primary key
#  coach_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_merits_on_coach_id  (coach_id)
#

class Merit < ApplicationRecord
  belongs_to :coach

  translates :merit
  accepts_nested_attributes_for :translations, allow_destroy: true
  translation_class.validates :merit, presence: true

  validates :merit, presence: true
end
