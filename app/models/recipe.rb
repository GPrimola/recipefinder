class Recipe
	include HTTParty

	key_value = ENV['FOOD2FORK_KEY']
	hostport = ENV['FOOD2FORK_SERVER_AND_PORT']
	base_uri "http://#{hostport}/api"
	default_params key: key_value

	def self.for search_term
		get('/search', query: { q: search_term })
	end

end