def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |key, value|
    value.each do |language, type|
      if new_hash[language].nil?
        new_hash[language] = {} 
        new_hash[language][:style] = []
      end
      new_hash[language][:type] = type.values[0]
      new_hash[language][:style] << key
    end
  end
  new_hash
end
