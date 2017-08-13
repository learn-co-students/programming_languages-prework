def reformat_languages(languages)
  new_hash = {}
  languages.each do |lang_type, lang|
    lang.each do |language, info|
      if  !new_hash.has_key?(language)
          new_hash[language] = info
          new_hash[language][:style] = []
      end
      new_hash[language][:style].push(lang_type)
    end
  end
  return new_hash
end
