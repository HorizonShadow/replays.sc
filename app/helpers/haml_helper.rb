module Site
	module Helpers
		# Renders a HAML file inside the pages/ directory
		# @param page [Symbol] The page to render
		# @param layout [Boolean] Flag to use layout or not
		def render_page(page, layout = true)
			haml :"pages/#{page}", layout: layout
		end
	end
end