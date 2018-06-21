def reformat_languages(languages)
  new_hash ={}
  languages.each {|style, hash|
  	hash.each {|language, type|
    	if new_hash[language] == nil
        new_hash[language] = type
    	  new_hash[language][:style] = [style]
    	else 
    	  new_hash[language][:style] << style
  		end
  	}
  }
  new_hash
end
