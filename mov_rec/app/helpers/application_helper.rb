module ApplicationHelper

	def admin?
		@current_user.user_type_id == UserType.find_by(type_name: 'Admin').id
	end
end
