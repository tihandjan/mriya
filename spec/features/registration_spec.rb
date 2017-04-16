require 'rails_helper'
include Warden::Test::Helpers

feature 'user sign in' do
    scenario 'user can log in' do
        User.create!(email: 'lol@lol.com', password: '1111111', password_confirmation: '1111111')

        visit new_user_session_path

        fill_in 'Email', with: 'lol@lol.com'
        fill_in 'Password', with: '1111111'
        click_on 'Войти'

        expect(current_path).to eq(root_path)
        expect(page).to have_content("Вход в систему выполнен.")
    end

    scenario 'user can sign up' do
        visit new_user_registration_path

        fill_in 'Email', with: 'lol2@lol.com'
        fill_in 'Password', with: '123456'
        fill_in 'Password confirmation', with: '123456'
        click_button 'Регистрация'

        expect(current_path).to eq(root_path)
        expect(page).to have_content("Добро пожаловать! Вы успешно зарегистрировались.")
    end
end

feature 'admin page' do
    before(:each) do
        @user = FactoryGirl.create(:user)
        login @user
    end

    scenario 'regular user can not visit admin page' do 
        visit rails_admin_path

        expect(current_path).to eq(root_path)
        expect(page).to have_content("You are not authorize to access this page!")
    end

    scenario 'signed in user can not visit admin page' do 
        visit rails_admin_path

        expect(current_path).to eq(root_path)
        expect(page).to have_content("You are not authorize to access this page!")
    end

    scenario 'signed in user with admin role can visit admin page' do 
        @user.add_role(:admin)
        visit rails_admin_path

        expect(current_path).to eq(rails_admin_path)
    end
end

def login(user)
    login_as user
end