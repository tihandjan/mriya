require 'rails_helper'

feature 'about pages' do
    scenario 'history page' do
        visit root_path
        page.find('.history-wrapper .blue-btn').click

        expect(page).to have_content('НАША СПРАВА – НАЙКРАЩА МРІЯ!"')
        expect(current_path).to eq(about_history_path(locale: 'ru'))
    end
    scenario 'sponsors page' do
        visit root_path
        page.find('.history-wrapper .blue-btn').click
        click_on('Спонсоры и партнеры')

        expect(current_path).to eq(about_sponsors_path(locale: 'ru'))
    end
    scenario 'tips page' do
        visit root_path
        page.find('.history-wrapper .blue-btn').click
        click_on('Советы для родителей')

        expect(current_path).to eq(about_tips_path(locale: 'ru'))
    end
    scenario 'memo page' do
        visit root_path
        page.find('.history-wrapper .blue-btn').click
        click_on('Памятка для футболиста')

        expect(current_path).to eq(about_memo_path(locale: 'ru'))
    end
    scenario 'achievements page' do
        visit root_path
        page.find('.history-wrapper .blue-btn').click
        within '.right-nav' do
            click_on('Достижения')
        end

        expect(current_path).to eq(about_achievements_path(locale: 'ru'))
    end
    scenario 'emblem page' do
        visit root_path
        page.find('.history-wrapper .blue-btn').click
        click_on('Эмблема')

        expect(current_path).to eq(about_emblem_path(locale: 'ru'))
    end
    scenario 'graduates page' do
        FactoryGirl.create(:graduate)
        visit root_path
        page.find('.history-wrapper .blue-btn').click
        click_on('Выпускники')

        expect(current_path).to eq(about_graduates_path(locale: 'ru'))
    end
    scenario 'coaching page' do
        visit root_path
        page.find('.history-wrapper .blue-btn').click
        click_on('Тренерский состав')

        expect(current_path).to eq(about_coaching_path(locale: 'ru'))
    end
    scenario 'anthem page' do
        visit root_path
        page.find('.history-wrapper .blue-btn').click
        click_on('Гимн клуба')

        expect(current_path).to eq(about_anthem_path(locale: 'ru'))
    end
    scenario 'mission page' do
        visit root_path
        page.find('.history-wrapper .blue-btn').click
        click_on('Миссия и ценности')

        expect(current_path).to eq(about_mission_path(locale: 'ru'))
    end
    
end