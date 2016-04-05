module ApplicationHelper

	def admin?
		@current_user.user_type_id == 1
	end
end
