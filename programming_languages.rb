def reformat_languages(languages)
  return_hash = Hash.new
  style_lang = []
  languages.each do |style, languages|
    style_lang << style
    languages.each do |language, type_hash|
      if return_hash[language]
        return_hash[language][:style] = [:oo, style_lang[0]]
      else
        type_hash[:style] = style_lang
        return_hash[language] = type_hash
      end
    end
      style_lang = []
  end
  return_hash
end
