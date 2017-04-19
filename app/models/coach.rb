# == Schema Information
#
# Table name: coaches
#
#  id         :integer          not null, primary key
#  name       :string
#  photo      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  birthday   :date
#

class Coach < ApplicationRecord
    has_many :partnership, dependent: :destroy
    has_many :teams, through: :partnership
    has_many :merits, dependent: :destroy

    validates :name, presence: true
    validates :photo, presence: true
    validates :birthday, presence: true

    mount_uploader :photo, CoachUploader
end
