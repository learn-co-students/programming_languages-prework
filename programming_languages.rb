def reformat_languages(languages)
  new_hash = {}
  languages.each do |oo_or_functional_key, programming_languages_hash_value|
    programming_languages_hash_value.each do |language_name_key, type_hash_value|
      type_hash_value.each do |type_key, type_value|
        if new_hash[language_name_key].nil?
          new_hash[language_name_key] = {}
        end
        new_hash[language_name_key][:style] ||= []
        new_hash[language_name_key][:style] << oo_or_functional_key
        if new_hash[language_name_key][type_key].nil?
          new_hash[language_name_key][type_key] = type_value
        end
      end
    end
  end
  new_hash
end
