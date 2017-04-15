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
  pending "add some examples to (or delete) #{__FILE__}"
end
