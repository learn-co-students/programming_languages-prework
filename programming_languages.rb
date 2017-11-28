def reformat_languages(languages)
  hash = {}
  languages.each do |style, lang_hash|
    lang_hash.each do |language, type_hash|
      if hash.has_key?(language)
        hash[language][:style] << style
      else
        hash[language] = type_hash
        hash[language][:style] = [style]
      end
    end
  end
  hash
end
