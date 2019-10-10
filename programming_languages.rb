require 'pry'

def reformat_languages(languages)
  # your code here
  hash = {}
  style_hash = {}

  languages.each do |style, languages|
    languages.each do |language, type|
      (style_hash[language] ||= []) << style
    end
  end

  languages.each do |style, languages|
    languages.each do |language, type|
      hash[language]=type
      hash[language][:style] ||=  style_hash[language]
    end
  end
  hash
end
