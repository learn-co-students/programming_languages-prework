require 'pry'

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, language_hash|
    language_hash.each do |language, information|
      new_hash[language] = information
      new_hash[language][:style] = []
    end
  end
  new_hash.each do |language, information|
    if languages[:oo].keys.include? language
      new_hash[language][:style] << :oo
    end
    if languages[:functional].keys.include? language
      new_hash[language][:style] << :functional
    end
  end
  new_hash
  
end
