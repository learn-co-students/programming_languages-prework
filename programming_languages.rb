def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |type, type_val|
    type_val.each do |lang, lang_val|
      lang_val.each do |key, value|
        if new_hash.keys.include?(lang)
          new_hash[lang][:style] << type
        else
          new_hash[lang] = {key => value, :style => [type]}
        end
      end
    end
  end
  new_hash
end
