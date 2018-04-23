def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, style_type|
    style_type.each do |language, type_hsh|
      type = type_hsh[:type]
      if !new_hash.has_key?(language)
        new_hash[language] = {type: type, style: [style]}
      else
        new_hash[language][:style].push(style)
      end
    end
  end
  new_hash
end
