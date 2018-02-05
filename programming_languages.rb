def reformat_languages(language_hash)
new_hash = {}
language_hash.each{ |style, languages| languages.each{ |language, attribute|
    if new_hash[language] == nil
      new_hash[language] = attribute
      new_hash[language][:style] = []
      new_hash[language][:style].push(style)
    else
      new_hash[language][:style].push(style)
    end
 }
}
new_hash
end
