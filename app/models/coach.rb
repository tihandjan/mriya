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

class Coach < ApplicationRecord
    has_many :partnership
    has_many :teams, through: :partnership

    validates :name, presence: true
    validates :photo, presence: true

    mount_uploader :photo, CoachUploader
end
