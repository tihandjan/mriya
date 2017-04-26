# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  album_id   :integer
#  photo      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_photos_on_album_id  (album_id)
#

require 'rails_helper'

RSpec.describe Photo, type: :model do
  it { should belong_to(:album) }
  it { should validate_presence_of(:photo) }
end
