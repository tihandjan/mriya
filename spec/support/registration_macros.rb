module RegistrationModule
    include Warden::Test::Helpers # we need it to be able to use login_as method

    def user_sign_in
        user = FactoryGirl.create(:user)
        login_as user
    end

    def admin_sign_in
        admin = FactoryGirl.create(:admin)
        login_as admin
    end
end