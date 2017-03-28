def reformat_languages(languages)
  new_hash = {}

  languages.each do |key, value|
    value.each do |lang, type|
      if !new_hash[lang]
        new_hash[lang] = type 
        new_hash[lang][:style] = [key]
      else
        new_hash[lang][:style] << key
      end
    end
  end

  new_hash
end
