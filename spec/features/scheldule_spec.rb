require 'rails_helper'

feature 'schedule page' do
    scenario 'user can visit schedule page' do
        visit root_path
        page.find('.history-wrapper .yellow-btn').click
        
        expect(page).to have_content('расписание')
        expect(current_path).to eq(schedules_path)
    end

    scenario 'user can see schedule' do
        FactoryGirl.create(:schedule)
        FactoryGirl.create(:schedule_spartac)
        visit root_path
        page.find('.history-wrapper .yellow-btn').click
        
        expect(page).to have_css('.schedule-table tbody tr', count: 2)
    end
end