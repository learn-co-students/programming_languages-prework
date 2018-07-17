
def reformat_languages(languages)
  new_hash = {}
    languages.each do |styles, hash|
      hash.each do |langauge, type|
        if new_hash[langauge] == nil
          new_hash[langauge] = type
          new_hash[langauge][:style] = [styles]
        else
          new_hash[langauge][:style].push(styles)
        end
      end
    end
    new_hash
end
