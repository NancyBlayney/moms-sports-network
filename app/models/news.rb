class News

	def self.search
		today = (Date.today).to_s.gsub('-', '')
		yesterday =  (Date.today-1).to_s.gsub('-', '')
    uri = URI("http://api.nytimes.com/svc/search/v2/articlesearch.json?&fq=news_desk:Sports&facet_field=day_of_week&begin_date=#{yesterday}&end_date=#{today}&api-key="+ 
    	ENV['NYT_SEARCH'])
    result = JSON.parse(Net::HTTP.get(uri))
    results = result['response']['docs']
	
    uri2 = URI("http://api.nytimes.com/svc/search/v2/articlesearch.json?&fq=news_desk:Sports&page=2&facet_field=day_of_week&begin_date=#{yesterday}&end_date=#{today}&api-key="+ 
    	ENV['NYT_SEARCH'])
    result2 = JSON.parse(Net::HTTP.get(uri2))
    results2 = result2['response']['docs']

    
    self.format_articles(results, results2)


	end




	private

	def self.format_articles(results, results2)
		final_res = []

		results.each do |res|
			if res['multimedia'].length > 0
				final_res.push({:url => res['web_url'], :headline => res['headline']['main'], :body => res['snippet'], :image => 'http://nytimes.com/' + res['multimedia'].first['url']})
			end
		end

		results2.each do |res|
			if res['multimedia'].length > 0
				final_res.push({:url => res['web_url'], :headline => res['headline']['main'], :body => res['snippet'], :image => 'http://nytimes.com/' + res['multimedia'].first['url']})
			end
		end

    return final_res
	end
  




end