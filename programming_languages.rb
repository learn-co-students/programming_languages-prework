def reformat_languages(languages)
  newHash = {}
  languages.each do |style, style_data|
  style_data.each do |language, language_data|
       newHash[language] = language_data
       newHash[language][:style] = []
     if language == :javascript
         newHash[language][:style].push(:oo)
         newHash[language][:style].push(:functional)
     elsif languages[:oo].keys.include?(language)
           newHash[language][:style].push(:oo)
     elsif languages[:functional].keys.include?(language)
           newHash[language][:style].push(:functional)
    end
  end
end
  newHash
end
