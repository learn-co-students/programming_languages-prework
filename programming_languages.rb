def reformat_languages(languages)
  result = {
  }

  languages.each do |style, langs|
  	langs.each do |lang, type|
  		if result.include? lang
  			result[lang][:style] << style
  		else
	  		type[:style] = [style]
	  		result[lang] = type
	  	end
  	end
  end
  result
end

