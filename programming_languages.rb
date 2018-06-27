require 'pry'


def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, language_hash|
    language_hash.each do |language, value_hash|
      if new_hash[language].nil?
        new_hash[language] = value_hash
        new_hash[language][:style] = [style]
      elsif !new_hash[language].nil?
        new_hash[language][:style] << style
      
      end
    end
  end
  new_hash
end    