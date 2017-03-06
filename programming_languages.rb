def reformat_languages(languages)
  new_hash = Hash.new
  languages.each do |oo_or_functional, language_name|
    language_name.each do |name, type|
      new_hash[name] = type
      new_hash[name][:style] = []
    end
  end
  languages.each do |oo_or_functional, language_name|
    language_name.each do |name, type|
      if new_hash.any? {|k, v| k == name}
        new_hash[name][:style] << oo_or_functional
      end
    end
  end
  new_hash
end
