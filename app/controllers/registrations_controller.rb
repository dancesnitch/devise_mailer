class Devise::Registrationscontroller < DeviseController

	private

def sign_up_params
	params.require(:user).permit(
		:email, 
		:password, 
		:password_confirmation,
		:username,
		:firstname,
		:lastname
		)
	end

def account_update_params
	params.require(:user).permit(
		:email, 
		:password, 
		:password_confirmation, 
		:current_password,
		:username,
		:firstname,
		:lastname
		)
	end
end	