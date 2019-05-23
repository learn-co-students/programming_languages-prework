def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |key, value|
    value.each do |key2, value2|
      if !new_hash.key?(key2)
        new_hash[key2] = value2
        new_hash[key2][:style] = []
      end
      new_hash[key2][:style].push(key)
    end
  end
  new_hash
end
