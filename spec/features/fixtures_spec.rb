require 'rails_helper'

feature 'fixtures', js: true do
    scenario 'user can see one last game per team' do
        FactoryGirl.create(:fixture, date: Time.current - 1.days, category: 'u-7', home_team: 'barcelona')
        FactoryGirl.create(:fixture, date: Time.current - 1.days, category: 'u-8', home_team: 'metallist')
        FactoryGirl.create(:fixture, date: Time.current - 2.days, category: 'u-7', home_team: 'dynamo')

        visit root_path
        page.find('.prev-next-wrapper .next').click
        page.find('.prev-next-wrapper .prev').click

        expect(page).to have_content('BARCELONA')
        expect(page).to_not have_content('DYNAMO')
        expect(page).to have_content('METALLIST')
    end
    scenario 'user can see one next game per team' do
        FactoryGirl.create(:fixture, date: Time.current + 1.days, category: 'u-7', home_team: 'anotherbarcelona')
        FactoryGirl.create(:fixture, date: Time.current + 2.days, category: 'u-7', home_team: 'anotherdynamo')
        FactoryGirl.create(:fixture, date: Time.current + 1.days, category: 'u-8', home_team: 'anothermetallist')

        visit root_path
        page.find('.prev-next-wrapper .next').click
        

        expect(page).to have_content("ANOTHERBARCELONA")
        expect(page).to_not have_content("ANOTHERDYNAMO")
        expect(page).to have_content("ANOTHERMETALLIST")
    end
end