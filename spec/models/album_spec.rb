# == Schema Information
#
# Table name: albums
#
#  id          :integer          not null, primary key
#  cover_photo :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  slug        :string
#
# Indexes
#
#  index_albums_on_slug  (slug) UNIQUE
#

require 'rails_helper'

RSpec.describe Album, type: :model do
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:cover_photo) }
  it { should have_one(:view) }
  it { should have_many(:photos) }
end
