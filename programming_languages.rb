def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, language|
    language.each do |language, type|
      # need to iterate twice because that separates the language from its type information
      if new_hash[language]
        # if the new hash already has a key called language
        new_hash[language][:style] << style
        # then just push anymore styles to the style area
      else
        new_hash[language] = type
        new_hash[language][:style] = [style]
        # else you have create the new keys/values for the new hash
      end
    end
  end
  new_hash
end