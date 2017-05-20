require 'rails_helper'

feature 'user can see list of all team tables' do
    let!(:game) { FactoryGirl.create(:game, season: 'first season') }
    scenario 'user sees season' do
        visit root_path
        click_on 'МАТЧИ'

        expect(page).to have_css('.tournament-list .list-group-item', count: 1)
    end
    scenario 'user can click on particular season to see table' do
        visit root_path
        click_on 'МАТЧИ'
        first('.tournament-list a').click

        expect(current_path).to eq(game_path(game, locale: 'ru'))
    end
end