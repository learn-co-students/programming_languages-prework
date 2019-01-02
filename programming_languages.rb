def reformat_languages(languages)
  # your code here
  new_hash = {}

  languages.each do |styles, language_name|
    language_name.each do |name, type|
      if new_hash.has_key?(name)
        new_hash[name][:style] << styles
      else
        new_hash[name] = type
        new_hash[name][:style] = [styles]
      end
    end
  end
  new_hash
end
