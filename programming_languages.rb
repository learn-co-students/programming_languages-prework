require "pry"

def reformat_languages(languages)
  languages_hash = {}
  languages.each do |style, language_hashes|
    language_hashes.each do |language, type|
      type.each do |key, value|
      languages_hash[language] = {style: [] ,type: value}
      end
    end
  end
  languages.each do |style, language_hashes|
    language_hashes.each do |language, type|
      languages_hash[language][:style] << style
    end
  end
  languages_hash
end
