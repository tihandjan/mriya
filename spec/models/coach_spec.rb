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

require 'rails_helper'

RSpec.describe Coach, type: :model do
  describe 'validation' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:coaching_groups) }
    it { should validate_presence_of(:photo) }
  end
end
