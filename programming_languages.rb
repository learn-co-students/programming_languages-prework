def reformat_languages(languages)
  # your code here
  # create a new hash
  new_hash = {}
  # iterate and inspect all elements
  languages.each do |language_type, language_hash|
    language_hash.each do |language_name, type_hash|
      type_hash.each do |type_key, type_value|
        # if the language does not exist i the hash, add it via the loop
        if new_hash[language_name].nil?
          new_hash[language_name] = { type_key => type_value, :style => [language_type] }
        else
          new_hash[language_name][:style] << language_type
        end
      end
    end
  end
  new_hash
end
