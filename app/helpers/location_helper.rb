module Site
	module Helpers
		# Returns whether or not user is currently at login page
		# @return [Boolean] Whether or not the user is at login
		def at_login?
			at? :login
		end

		private
		# Shortcut method for location helpers
		# @param loc [Symbol] The location to check
		# @return [Boolean] Whether or not the user is at the location
		def at?(loc)
			request.path_info.downcase.include? loc.to_s
		end
	end
end