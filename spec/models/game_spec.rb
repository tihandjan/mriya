# == Schema Information
#
# Table name: games
#
#  id         :integer          not null, primary key
#  season     :string           default("Турнирная таблица Первенства Украины 2017/2018")
#  body       :text
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  category   :string
#
# Indexes
#
#  index_games_on_slug  (slug)
#

require 'rails_helper'

RSpec.describe Game, type: :model do
  describe 'validation' do
    it { should validate_presence_of(:season) }
    it { should validate_presence_of(:body) }
    it { should validate_presence_of(:category) }
  end
end
