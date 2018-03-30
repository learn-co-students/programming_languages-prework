def reformat_languages(languages)
  new_hash = {}
  
  languages.each do |style, style_language|
    style_language.each do |language, language_type|
      language_type.each do |type, type_value|
        
        if new_hash[language] == nil
          new_hash[language] = {type => type_value}
        end
        
        if new_hash[language].has_key?(:style) == false
          new_hash[language][:style] = []
          new_hash[language][:style] << style
        else
          new_hash[language][:style] << style
        end
        
      end
    end
  end
  
  new_hash
end
