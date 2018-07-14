def reformat_languages(languages)
  new_hash = {}
  languages.each { |style, language|
    language.each { |key, value|
      if(new_hash.key?(key))
        new_hash[key][:style].push(style)
      else
        new_format = value
        new_format[:style] = [style]
        new_hash[key] = new_format
      end
    }
  }
  new_hash
end
