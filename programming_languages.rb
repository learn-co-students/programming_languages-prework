require "pry"

def reformat_languages(languages)
  new_hash = {}
  languages.each do | oriented, language_data |
  	language_data.each do | language, elements |
	  		if new_hash[language] == nil
	  			new_hash[language] = elements
	  			new_hash[language][:style]=[oriented]
	  		else
	  			new_hash[language][:style] << oriented
	  		end
  		end
  	end  
  new_hash
end
