def reformat_languages(languages)
  new_hash = {}
  languages.each {|style,programming_languages|
    programming_languages.map {|language, type|
      if new_hash[language] == nil
        new_hash[language] = type
        new_hash[language][:style] = []
      end
      new_hash[language][:style] << style
    }
  }

  new_hash
end
