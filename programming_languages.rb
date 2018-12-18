def reformat_languages(languages)
  hash ={}
  languages.each do |style, data|
    data.each do |lang, type|
      if hash[lang] == nil
        hash[lang] = type
        hash[lang][:style] = []
      end
    hash[lang][:style] << style
  end
end
hash
end
