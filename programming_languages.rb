   
def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, hash|
    hash.each do |language_names, type_hash|
      if !new_hash.key?(language_names)
        new_hash[language_names] = {}
      end
      type_hash.each do |type_symbol, name_of_type|
        if !new_hash[language_names].key?(type_symbol)
          new_hash[language_names][type_symbol] = name_of_type
        end
        if !new_hash[language_names].key?(:style)
          new_hash[language_names][:style] = [style]
        elsif new_hash[language_names].key?(:style)
          new_hash[language_names][:style] << style
        end       
      end
    end
  end
  new_hash
end