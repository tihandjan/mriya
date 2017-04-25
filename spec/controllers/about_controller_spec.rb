require 'rails_helper'

RSpec.describe AboutController, type: :controller do
    describe 'GET #history' do
        it 'renders template' do
            get :history

            expect(response).to render_template(:history)
            expect(response).to have_http_status(200)
        end
    end
    describe 'GET #mission' do
        it 'renders template' do
            get :mission

            expect(response).to render_template(:mission)
            expect(response).to have_http_status(200)
        end
    end
    describe 'GET #tips' do
        it 'renders template' do
            get :tips

            expect(response).to render_template(:tips)
            expect(response).to have_http_status(200)
        end
    end
    describe 'GET #memo' do
        it 'renders template' do
            get :memo

            expect(response).to render_template(:memo)
            expect(response).to have_http_status(200)
        end
    end
    describe 'GET #achievements' do
        it 'renders template' do
            get :achievements

            expect(response).to render_template(:achievements)
            expect(response).to have_http_status(200)
        end
    end
    describe 'GET #emblem' do
        it 'renders template' do
            get :emblem

            expect(response).to render_template(:emblem)
            expect(response).to have_http_status(200)
        end
    end
    describe 'GET #graduates' do
        it 'renders template' do
            get :graduates

            expect(response).to render_template(:graduates)
            expect(response).to have_http_status(200)
        end
    end
    describe 'GET #sponsors' do
        it 'renders template' do
            get :sponsors

            expect(response).to render_template(:sponsors)
            expect(response).to have_http_status(200)
        end
    end
    describe 'GET #coaching' do
        it 'renders template' do
            get :coaching

            expect(response).to render_template(:coaching)
            expect(response).to have_http_status(200)
        end
    end
    describe 'GET #anthem' do
        it 'renders template' do
            get :anthem

            expect(response).to render_template(:anthem)
            expect(response).to have_http_status(200)
        end
    end
end