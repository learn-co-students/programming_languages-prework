def reformat_languages(languages)

  new_hash = {}

  languages.each do |style, language|
    language.each do |name, type|
      new_hash[name] = type
      new_hash[name][:style] = []
    end
  end

  new_hash.each do |name, style|
    if languages[:oo].keys.include? name
      new_hash[name][:style] << :oo
    end
    if languages[:functional].keys.include? name
      new_hash[name][:style] << :functional
    end
  end

  new_hash

end
