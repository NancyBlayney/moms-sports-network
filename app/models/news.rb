class News

	def self.search
    uri = URI("http://api.nytimes.com/svc/search/v2/articlesearch.json?&fq=news_desk:Sports&facet_field=day_of_week&begin_date=20160401&end_date=20160420&api-key="+ 
    	ENV['NYT_SEARCH'])
    result = JSON.parse(Net::HTTP.get(uri))
    results = result['response']['docs']
    self.format_articles(results)
    # return results
	end




	private

	def self.format_articles(results)
		final_res = []

		results.each do |res|
			if res['multimedia'].length > 0
				final_res.push({:url => res['web_url'], :headline => res['headline']['main'], :body => res['snippet'], :image => 'http://nytimes.com/' + res['multimedia'].first['url']})
			else
				final_res.push({:url => res['web_url'], :headline => res['headline']['main'], :body => res['snippet'], :image => 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/No_image_available.svg/300px-No_image_available.svg.png'})
			end
		end

    return final_res
	end
  




end