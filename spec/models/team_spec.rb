# == Schema Information
#
# Table name: teams
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  slug       :string
#
# Indexes
#
#  index_teams_on_slug  (slug) UNIQUE
#

require 'rails_helper'

RSpec.describe Team, type: :model do
    it { should validate_presence_of(:name) }
end
