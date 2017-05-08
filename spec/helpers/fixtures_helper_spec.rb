require 'rails_helper'

RSpec.describe FixturesHelper do
    describe 'prev_fixtures method' do
        it 'returns one game per category' do
            FactoryGirl.create(:fixture, date: Time.current - 1.days, category: 'u-7')
            FactoryGirl.create(:fixture, date: Time.current - 1.days, category: 'u-8')
            FactoryGirl.create(:fixture, date: Time.current - 2.days, category: 'u-7')

            expect(prev_fixtures.count).to eq(2) 
        end
    end
    describe 'next_fixtures method' do
        it 'returns one game per category' do
            FactoryGirl.create(:fixture, date: Time.current + 1.days, category: 'u-7')
            FactoryGirl.create(:fixture, date: Time.current + 1.days, category: 'u-8')
            FactoryGirl.create(:fixture, date: Time.current + 2.days, category: 'u-7')

            expect(next_fixtures.count).to eq(2) 
        end
    end
end