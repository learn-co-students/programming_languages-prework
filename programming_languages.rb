def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |styles, langs|
    languages[styles].each do |lang, types|
      if new_hash[lang] == nil
        new_hash[lang] = {}
      end
      languages[styles][lang].each do |type, value|
        new_hash[lang][:type] = value
        if new_hash[lang][:style] == nil
          new_hash[lang][:style]  = [styles]
        else
          new_hash[lang][:style].push(styles)
        end
      end
    end
  end
  new_hash
end
