# == Schema Information
#
# Table name: achievements
#
#  id         :integer          not null, primary key
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_achievements_on_slug  (slug)
#

require 'rails_helper'

RSpec.describe Achievement, type: :model do
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:body) }
end
