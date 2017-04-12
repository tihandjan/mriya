# == Schema Information
#
# Table name: videos
#
#  id         :integer          not null, primary key
#  title      :string
#  summary    :string
#  video_url  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Video < ApplicationRecord
    validates :title, presence: true, length: {minimum: 10, maximum: 170}
    validates :summary, length: {maximum: 200}
    validates :video_url, presence: true
end
