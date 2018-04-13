require 'pry'

def reformat_languages(languages_hash)
  new_hash = {}
  languages_hash.each do |style, languages|
    languages.each do |language, type|
      type.each do |key, value|
        new_hash[language] = {key => value, :style => []}
      end
    end
  end
  languages_hash.each do |style, languages|
    languages.each do |language, type|
        new_hash[language][:style].push(style)
    end
  end
  new_hash
end
