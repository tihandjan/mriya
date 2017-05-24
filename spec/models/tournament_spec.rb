# == Schema Information
#
# Table name: tournaments
#
#  id         :integer          not null, primary key
#  kind       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  slug       :string
#
# Indexes
#
#  index_tournaments_on_slug  (slug) UNIQUE
#

require 'rails_helper'

RSpec.describe Tournament, type: :model do
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:kind) }
  it { should validate_presence_of(:body) }
end
