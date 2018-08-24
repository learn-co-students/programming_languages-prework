def reformat_languages(languages)
  new_hash = {}
  
  languages.each do |style, language_hash|
    language_hash.each do |lang, type_hash|
      type_hash.each do|type, value|
        if new_hash.has_key?(lang)
          new_hash[lang][:style].push(style)
        else
          new_hash[lang] = {type => value, :style => [style]}
        end
      end
    end
  end

  new_hash
end
