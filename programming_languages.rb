def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |style, language_list|
    language_list.each do |name, properties|
      if new_hash.include?(name)
        new_hash[name][:style].push(style)
      else
        new_hash[name] = properties
        new_hash[name][:style] = [style]
      end
    end
  end
  new_hash
end
