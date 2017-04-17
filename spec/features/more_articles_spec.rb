require 'rails_helper'

feature 'more pagination' do
    before(:each) do
        FactoryGirl.create_list(:article, 14)
    end
    scenario 'cick on more btn downloads +3 article', js: true do
        visit articles_path
        click_on 'еще новости'

        expect(current_path).to eq articles_path
        expect(page).to have_css('.index-col', count: 9)
    end

    scenario 'double cick on more btn downloads +6 article', js: true do
        visit articles_path
        click_on 'еще новости'
        click_on 'еще новости'

        expect(current_path).to eq articles_path
        expect(page).to have_css('.index-col', count: 12)
    end
end 