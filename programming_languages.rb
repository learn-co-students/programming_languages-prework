def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, language|
    
    language.each do |lang, data|
      if(new_hash[lang] == nil)
        new_hash[lang] = data
      end

      if new_hash[lang][:style] == nil
        new_hash[lang][:style] = [style]
      else
        new_hash[lang][:style].push(style)
      end
    end
  end
  return new_hash
end