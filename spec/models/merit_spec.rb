# == Schema Information
#
# Table name: merits
#
#  id         :integer          not null, primary key
#  merit      :string
#  coach_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_merits_on_coach_id  (coach_id)
#

require 'rails_helper'

RSpec.describe Merit, type: :model do
  it { should belong_to(:coach) }
end
