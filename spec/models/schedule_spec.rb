# == Schema Information
#
# Table name: schedules
#
#  id         :integer          not null, primary key
#  team       :string
#  coach      :string
#  stadium    :string
#  mon        :string
#  tue        :string
#  wed        :string
#  thu        :string
#  fri        :string
#  sat        :string
#  sun        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Schedule, type: :model do
  it { should validate_presence_of(:team) }
  it { should validate_presence_of(:coach) }
  it { should validate_presence_of(:stadium) }
end
