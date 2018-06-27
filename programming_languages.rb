def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, details|
    details.each do |language, type|
      if new_hash[language].nil?
        new_hash[language] = type
        new_hash[language][:style] = [style]
      elsif new_hash[language][:style].include?(style) == false
        new_hash[language][:style] << style
      end
    end
  end
  return new_hash
end