def reformat_languages(languages)
  new_hash = {}
  used_languages = []
  languages.each do |style, languages|
    languages.each do |language, info|
      if used_languages.include?(language)
        new_hash[language][:style].push(style)
      else
        used_languages.push(language)
        info.each do |key, val|
          new_hash[language] = {
            key => val,
            :style => [style]
          }
        end
      end
    end
  end
  new_hash
end
