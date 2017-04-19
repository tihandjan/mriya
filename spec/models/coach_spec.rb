# == Schema Information
#
# Table name: coaches
#
#  id         :integer          not null, primary key
#  name       :string
#  photo      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  birthday   :date
#

require 'rails_helper'

RSpec.describe Coach, type: :model do
  describe 'validation' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:photo) }
    it { should validate_presence_of(:birthday) }
    it { should have_many(:teams).through(:partnership) }
    it { should have_many(:partnership) }
    it { should have_many(:merits) }
  end
end
