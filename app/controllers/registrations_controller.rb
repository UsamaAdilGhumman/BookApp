class RegistrationsController < Devise::RegistrationsController
    private 

    def sign_up_params
        params.require(:author).permit(:first_name, :last_name, :email, :password, :password_confrmation)
    end

    def account_update_params
        params.require(:author).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password)
    end
end