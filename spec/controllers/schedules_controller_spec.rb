# == Schema Information
#
# Table name: schedules
#
#  id         :integer          not null, primary key
#  team       :string
#  coach      :string
#  stadium    :string
#  mon        :string
#  tue        :string
#  wed        :string
#  thu        :string
#  fri        :string
#  sat        :string
#  sun        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe SchedulesController, type: :controller do
    describe 'GET #index' do
        before(:each) do
            @met = FactoryGirl.create(:schedule)
            @sp = FactoryGirl.create(:schedule_spartac)
        end
        it 'renders index template' do
            get :index

            expect(response).to render_template(:index)
            expect(response).to have_http_status(200)
        end
        it 'assigns two var for two stadium' do
            get :index

            expect(assigns(:schedule_metalurg)).to match_array(@met)
            expect(assigns(:schedule_spartac)).to match_array(@sp)
        end
    end
end
