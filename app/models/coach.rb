# == Schema Information
#
# Table name: coaches
#
#  id              :integer          not null, primary key
#  name            :string
#  photo           :string
#  coaching_groups :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Coach < ApplicationRecord
    validates :name, presence: true
    validates :coaching_groups, presence: true
    validates :photo, presence: true

    mount_uploader :photo, CoachUploader
end
