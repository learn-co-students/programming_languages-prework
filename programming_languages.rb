def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, list|
    list.each do |language, data|
      data.each do |key, value|
        if new_hash[language] == nil
          new_hash[language] = {key => value}
          new_hash[language][:style] = [style]
        else
          new_hash[language][:style] << style
        end
      end
    end
  end
  puts new_hash
  return new_hash
end
