require 'rails_helper'

feature 'more pagination' do
    given(:articles) { FactoryGirl.create_list(:article, 6) }
    scenario 'cick on more btn downloads +3 article', js: true do

        visit articles_path
        click_on 'еще новости'

        expect(current_path).to eq articles_path
    end
end 