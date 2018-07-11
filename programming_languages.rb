require 'pry'

def reformat_languages(languages)
  new_hash = {}
  
  languages.each do |style, language_hash|
    language_hash.each do |language, type_hash|
      if new_hash.keys.include?(language)
        language = language
      else
        new_hash[language] = type_hash
      end
      if new_hash[language].keys.include?(:style)
        new_hash[language][:style].push(style)
      else
        new_hash[language][:style] = [style]
      end
    end
  end
  return new_hash
end
