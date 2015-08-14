module Site
	module Helpers
		# Generate a script tag for given file
		# @param file [String] File to generate script tag from
		# return [String] HTML script tag
		def script(file)
			"<script src='#{file}'></script>"
		end

		# Generate a css tag for given file
		# @param file [String] File to generate css tag from
		# return [String] HTML css tag
		def css(file)
			"<link rel='stylesheet' type='text/css' href='#{file}'>"
		end
	end
end