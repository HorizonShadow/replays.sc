module Site
	module Helpers
		# Render a haml file inside the partials/ directory
		# @param template [Symbol] the partial to render
		def render_partial(template)
			haml :"partials/#{template}", partial: false
		end

	end
end