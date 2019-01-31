def reformat_languages(languages)
  # your code here
  new_hash = {}

  languages.each do |style, style_value|
    style_value.each do |language, value|
      new_hash[language] = {}
      value.each do |key, value|
        new_hash[language][key] = value
        new_hash[language][:style] = []
      end
    end
  end

  languages.each do |style, style_value|
    style_value.each do |language, value|
      value.each do |key, value|
        new_hash[language][:style] << style
      end
    end
  end

  return new_hash
end
