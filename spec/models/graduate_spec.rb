# == Schema Information
#
# Table name: graduates
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Graduate, type: :model do
  describe 'validation' do
    it { should validate_presence_of(:body) }
    it 'user can create only one record' do
      graduate = FactoryGirl.create(:graduate)
      new_grad = Graduate.new
      expect(new_grad).to_not be_valid
    end
  end
end
