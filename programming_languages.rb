def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, hash|
    hash.each do |language, type|
      if new_hash[language] == nil
        new_hash[language] = type
        new_hash[language][:style] = [style]
      else
        new_hash[language][:style] << style
      end
    end
  end
  new_hash
end