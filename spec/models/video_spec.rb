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
#  slug       :string
#
# Indexes
#
#  index_videos_on_slug  (slug) UNIQUE
#

require 'rails_helper'

RSpec.describe Video, type: :model do
  describe 'validation' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:video_url) }
    it { should validate_length_of(:title).is_at_least(10) }
    it { should validate_length_of(:title).is_at_most(170) }
    it { should validate_length_of(:summary).is_at_most(200) }
  end


end
