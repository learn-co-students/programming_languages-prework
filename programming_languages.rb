
def reformat_languages(languages)
  new_hash = {}
  #add each language => {it's characteristics} to the new hash from the OG hash
  #in new hash give each language a style key that points at an empty array
  languages.each do |style, languages_hash|
    languages_hash.each do |language, characteristic_hash|
      new_hash[language] = characteristic_hash
      new_hash[language][:style] = []
    end
  end
  #iterate over new hash.  for each language if it is in the OG style hash add that style to the languages :style array in the new hash
  new_hash.each do |language, characteristic_hash|
    if languages[:oo].include?(language)
      new_hash[language][:style] << :oo
    end
    if languages[:functional].include?(language)
      new_hash[language][:style] << :functional
    end
  end
  new_hash
end
