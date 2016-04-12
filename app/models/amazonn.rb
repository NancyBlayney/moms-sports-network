class Amazonn

	def self.search(search_term)
		search_term = search_term.to_s
		res = Amazon::Ecs.item_search(search_term, { :search_index => 'All',
																								 :response_group => 'Images, ItemAttributes, Offers'})
    return res
	end

  







end