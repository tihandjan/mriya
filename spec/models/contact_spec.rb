# == Schema Information
#
# Table name: contacts
#
#  id         :integer          not null, primary key
#  russian    :text
#  ukrainian  :text
#  english    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Contact, type: :model do
  it { should validate_presence_of(:russian) }
  it { should validate_presence_of(:ukrainian) }
  it { should validate_presence_of(:english) }
  it 'user can create only one record' do
      graduate = FactoryGirl.create(:contact)
      new_contact = Contact.new
      expect(new_contact).to_not be_valid
    end
end
