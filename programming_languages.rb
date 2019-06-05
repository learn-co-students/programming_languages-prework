def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, language_hash|
    language_hash.each do |language, type|
      new_hash[language] ||= type
      (new_hash[language][:style] ||= []) << style
    end
  end
  new_hash
end
