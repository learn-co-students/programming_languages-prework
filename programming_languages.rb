def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |style, langs|
    langs.keys.each do |lang|
      if new_hash[lang] == nil
        new_hash[lang] = {}
        new_hash[lang][:type] = languages[style][lang][:type]
        new_hash[lang][:style] = [style]
      else
        new_hash[lang][:style] << style
      end
    end
  end
  new_hash
end
