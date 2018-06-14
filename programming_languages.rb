def reformat_languages(languages)
  # your code here
 new_hash = {}
  languages.each do |type, language_hash|
    language_hash.each do |language_name, data|
      data.each do |data_name, value|
        if new_hash.key?(language_name) == false
          new_hash[language_name] = {data_name => value, :style => [type]}
        else
          new_hash[language_name][:style] << type
        end
      end
    end
  end
  new_hash
  
  
end
