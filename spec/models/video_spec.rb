# == Schema Information
#
# Table name: videos
#
#  id         :integer          not null, primary key
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
  end

  describe 'search' do
    it 'if title equal to query we get video' do
      video_1 = FactoryGirl.create(:video, title: 'Hello Video Hello Video')
      video_2 = FactoryGirl.create(:video, title: 'Some other title to search')
      video = Video.search('Hello Video Hello Video') 

      expect(video).to match_array(video_1)
      expect(video).to_not eq([video_1, video_2])
    end
  end

end
