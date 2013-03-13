module Jekyll

	PAGES_NAV = { "index" => "/index.html", "photos" => "/photos.html", 
		"tourism" => "/interets_touristiques.html", "localisation" => "/localisation.html", 
		"details" => "/descriptif_detaille.html" }

	module Tangorri
		def active_nav_class(navItem, url)
			return " class=\" active\"" if PAGES_NAV[navItem] == url
			""
		end
	end
end

Liquid::Template.register_filter(Jekyll::Tangorri)