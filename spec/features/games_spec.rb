require 'rails_helper'

feature 'user can see list of all team tables' do
    let!(:game) { FactoryGirl.create(:game, season: 'first season') }
    scenario 'user sees season' do
        visit root_path
        click_on 'Матчи'

        expect(page).to have_css('.tournament-list .list-group-item', count: 1)
        expect(current_path).to eq(games_path)
    end
    scenario 'user can click on particular season to see table' do
        visit root_path
        click_on 'Матчи'
        first('.tournament-list a').click

        expect(current_path).to eq(game_path(game))
    end
end