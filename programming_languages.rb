def reformat_languages(languages)
  new_hash = {}
  languages.each do |language_style,language_data|
    language_data.each do |language,language_properties|
      if !new_hash[language]
        new_hash[language] = {}
      end
      language_properties.each do |key,value|
        new_hash[language][key] = value
      end
      if !new_hash[language][:style]
        new_hash[language][:style] = []
      end
      if !new_hash[language][:style].include?(language_style)
        new_hash[language][:style] << language_style
      end
    end
  end
  new_hash
end
