def reformat_languages(languages)
  new_hash = {}
  keys = []
  languages.each do |key, value|
    languages[key].each do |key2, value2|
      new_hash[key2] = value2
      new_hash[key2][:style] = []
      keys << [key2, key]
    end
  end
  count = 0
  keys.each do |key, value|
    new_hash[keys[count][0]][:style] << keys[count][1]
    count += 1
  end
  new_hash
end
