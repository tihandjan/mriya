require 'rails_helper'

feature 'schedule page' do
    scenario 'user can visit schedule page' do
        visit root_path
        page.find('.history-wrapper .yellow-btn').click
        
        expect(page).to have_content('расписание')
    end

    scenario 'user can see schedule' do
        FactoryGirl.create_list(:schedule, 5)
        FactoryGirl.create_list(:schedule_spartac, 2)
        visit root_path
        page.find('.history-wrapper .yellow-btn').click
        
        expect(page).to have_css('.schedule-table tbody tr', count: 7)
    end
end