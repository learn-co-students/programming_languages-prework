def reformat_languages(languages)
  new_hash = {}
  languages.each do |key1, value1|
    value1.each do |key2, value2|
      value2.each do |key3, value3|
        if new_hash[key2].nil?
          new_hash[key2] = {} 
        end
        new_hash[key2][:style] ||= []  
        new_hash[key2][:style] << key1  
        if new_hash[key2][key3].nil?
          new_hash[key2][key3] = value3
        end
      end
    end
  end
  new_hash
end
