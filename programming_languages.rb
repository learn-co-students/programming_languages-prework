require 'pry'
def reformat_languages(languages)
 new_hash = {}


languages.each do |language, data|
	#binding.pry
new_hash[:language] = data
data.each do |name_of_language, info|
	#binding.pry
	new_hash[name_of_language] ||= info
	#binding.pry
	new_hash[name_of_language][:style] = []
	#binding.pry
	new_hash[name_of_language][:style] << language
	#binding.pry
	#if languages == :functional
	#new_hash[:javascript][:style] << language
	#binding.pry
end
end
#end
new_hash[:javascript][:style] << :oo
 new_hash

end
#reformat_languages(languages)