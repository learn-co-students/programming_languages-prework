def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, language_name|
    language_name.each do |name, type|
      new_hash[name] = {}
    end
    language_name.each do |name, type|
      type.each do |type_key, type_value|
        new_hash[name][type_key] = type_value
        new_hash[name][:style] = []
      end
    end
  end
  languages.each do |style, language_name|
    language_name.each do |name, type|
      if new_hash.any? {|a, b| a == name}
        new_hash[name][:style].push(style)
      end
    end
  end
  new_hash
end
