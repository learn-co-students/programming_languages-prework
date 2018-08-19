require 'pry'

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, language_hash|
    language_hash.each do |language, information|
      new_hash[language] = information if new_hash[language].nil?
      new_hash[language][:style] ||= []
      new_hash[language][:style] << style
    end
  end
  
  new_hash
  
end
