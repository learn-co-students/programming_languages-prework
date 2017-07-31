def reformat_languages(languages)
  formattedLanguages = Hash.new 
  languages.each do |paradigm, lang|
  	lang.each do |name, data|
  		formattedLanguages[name] =  data if formattedLanguages[name] == nil
  		formattedLanguages[name][:style] == nil ? formattedLanguages[name][:style] = [paradigm] : formattedLanguages[name][:style] << paradigm 
  	end 
  end
  formattedLanguages 
end
