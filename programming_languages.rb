def reformat_languages(languages)
 new_hash = {}

languages.each do |style, language|
  language.each do |language,attribute|
    new_hash[language] = {style:[]}.merge(attribute)
    end
    


end



languages.each do |style, language|
  language.each do |language,attribute|
    new_hash[language][:style] << style
    
  end
end

new_hash
end
