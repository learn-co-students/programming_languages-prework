def reformat_languages(languages)
  new_hash = {}

  languages.each do |style, langs|
    langs.each do |language, type|
      if new_hash[language]
        new_hash[language][:style] << style
      else
        new_hash[language] = {
        type: languages[style][language][:type],
        style: [] << style
        }
      end
    end
  end
  new_hash
end
