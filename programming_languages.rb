def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |style, language_set|
    language_set.each do |language, description_set|
      description_set.each do |type_category_name, type_string|
        new_hash[language] = {type_category_name => type_string, :style => [style]}
      end
    end
  end
  new_hash[:javascript][:style].push(:oo)
  new_hash
end
