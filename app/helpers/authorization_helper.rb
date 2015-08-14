module Site
	module Helpers
		# Checks if user is authorized to view page
		def authorized?
			return false if @user.nil?
			@user.can_view_page?
		end
	end
end