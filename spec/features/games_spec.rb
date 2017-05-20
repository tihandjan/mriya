require 'rails_helper'

feature 'user can see list of all team tables' do
    scenario 'user sees season' do
        FactoryGirl.create(:game, season: 'first season', category: 'перевенство ДЮФЛ')
        visit root_path
        click_on 'ПЕРВЕНСТВО ДЮФЛУ'

        expect(page).to have_css('.tournament-list .list-group-item', count: 1)
    end
    scenario 'user can click on particular season to see table' do
        game = FactoryGirl.create(:game, season: 'first season', category: 'первенство харьковской обл.')
        visit root_path
        click_on 'ПЕРВЕНСТВО ХАРЬКОВСКОЙ ОБЛ.'
        first('.tournament-list a').click

        expect(current_path).to eq(game_path(game, locale: 'ru'))
    end
end