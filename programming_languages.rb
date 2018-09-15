def reformat_languages(languages)
  hash = {}
  languages.each do |key, value|
    value.each do |language, type|
      if hash[language] == nil
        hash[language] = type
        hash[language][:style] = [key]
      else
        hash[language][:style] << key
      end
    end
  end
  hash
end
