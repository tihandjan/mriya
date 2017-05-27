# == Schema Information
#
# Table name: schedules
#
#  id         :integer          not null, primary key
#  team       :string
#  stadium    :string
#  mon        :string
#  tue        :string
#  wed        :string
#  thu        :string
#  fri        :string
#  sat        :string
#  sun        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Schedule < ApplicationRecord
    translates :coach
    accepts_nested_attributes_for :translations, allow_destroy: true
    translation_class.validates :coach, presence: true
    
    validates :stadium, presence: true
    validates :coach, presence: true
    validates :team, presence: true
    
end
