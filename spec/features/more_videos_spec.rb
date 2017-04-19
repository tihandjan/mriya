require 'rails_helper'

feature 'more pagination', js: true do
    before(:each) { FactoryGirl.create_list(:video, 14) }
    scenario 'click on more btn we get + 3 videos' do
        visit videos_path

        click_on 'еще видео'

        expect(page).to have_css('.index-col', 9)
    end

    scenario 'click on more btn we get + 3 videos' do
        visit videos_path

        click_on 'еще видео'
        click_on 'еще видео'

        expect(page).to have_css('.index-col', 12)
    end
end