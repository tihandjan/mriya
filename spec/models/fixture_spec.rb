# == Schema Information
#
# Table name: fixtures
#
#  id         :integer          not null, primary key
#  home_team  :string
#  away_team  :string
#  category   :string
#  score      :string           default("---")
#  date       :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Fixture, type: :model do
  it { should validate_presence_of(:date) }
  it { should validate_presence_of(:home_team) }
  it { should validate_presence_of(:away_team) }
  it { should validate_presence_of(:category) }
end
