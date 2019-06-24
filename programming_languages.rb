def reformat_languages(languages)
  hash = {}
  languages.each do |style, languages_array|
    languages_array.each do |language, type_hash|
      type_hash.each do |type, value|
        if hash.has_key?(language)
          hash[language][:style] << style
        else
          hash[language] = {:type => value, :style => [] << style}
        end
      end
    end
  end
  return hash
end
