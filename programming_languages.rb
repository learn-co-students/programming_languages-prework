def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |key, value|
    value.each do |key1, value1|
      if !new_hash[key1]
        new_hash[key1] = value1
        new_hash[key1][:style] = [key]
      else
        new_hash[key1][:style] << key
        end
      end
    end
    new_hash
end
