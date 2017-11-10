def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, lang|
    lang.each do |name, attributes|
      if new_hash.include?(name)
        new_hash[name][:style] << style
      else
        new_hash[name] = attributes
        new_hash[name][:style] = [style]
      end
    end
  end
  new_hash
end
