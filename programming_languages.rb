def reformat_languages(languages)
  new_hash = {}
  languages.each do |key, value|
    languages[key].each do |key2, value2|
      languages[key][key2].each do |key3, value3|
        new_hash[key2] = {key3 => value3, :style => [key]}
      end
    end
  end
  new_hash[:javascript][:style] << :oo
  new_hash
end
