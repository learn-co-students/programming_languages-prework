def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |style, language|
    language.each do |attribute, type|
      if new_hash.has_key?(attribute)
        new_hash[attribute][:style] << style
      else
        new_hash[attribute] = type
        new_hash[attribute][:style] = [style]
      end
    end
  end
  new_hash
end
