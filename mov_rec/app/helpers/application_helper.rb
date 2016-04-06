module ApplicationHelper

	def admin?
		@admin = UserType.find_by type_name: 'Admin'
		@current_user.user_type_id == @admin.id
	end
end
