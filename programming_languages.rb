def reformat_languages(languages)
  # your code here
  reformatted_hash = {}
  languages.each do |style, hash|
    hash.each do |language, type|
      if reformatted_hash[language] == nil
        reformatted_hash[language] = type
        reformatted_hash[language][:style] = [style]
      else
        reformatted_hash[language][:style] << style
      end
    end
  end
  reformatted_hash
end
