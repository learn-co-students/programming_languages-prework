def reformat_languages(languages)
  new_hash = Hash.new
  languages.each do |style, langs|
    langs.each do |lang, type|
      new_hash[lang] =  type
      new_hash[lang][:style] = []
    end
  end
  languages.each do |style, langs|
    langs.each do |lang, type|
      new_hash[lang][:style] << style
    end
  end
  new_hash
end
