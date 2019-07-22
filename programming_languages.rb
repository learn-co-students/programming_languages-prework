def reformat_languages(languages)
  new_hash = {}
languages.each do |oo_or_functional, language_hash|
  language_hash.each do |language, type_hash|
    type_hash.each do |type, int_comp|
      if new_hash[language].nil?
      new_hash[language] = {}
    end
    new_hash[language][:style] ||= []
    new_hash[language][:style] << oo_or_functional
    if new_hash[language][type].nil?
      new_hash[language][type] = int_comp
    end
  end
end
end
new_hash
end
