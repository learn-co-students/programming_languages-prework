def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each { |style, langs|
    langs.each { |langName, attributes|
      if new_hash[langName]
         new_hash[langName][:style].push(style)
      else
        new_hash[langName] = attributes
        new_hash[langName][:style] = [style]
      end
    }
  }
  new_hash
end
