def reformat_languages(languages)
  new_hash = {}
  languages.each do |kind,language_name|
    language_name.each do |language, type|
      if new_hash.has_key?(language)
        style_array = (new_hash[language][:style] + [kind]).uniq
        style_hash = {:style => style_array}
        new_hash[language] = type.merge(style_hash)
      else
        style_array = [kind]
        style_hash = {:style => style_array}
        new_hash[language] = type.merge(style_hash)
      end
    end
  end
  new_hash
end
