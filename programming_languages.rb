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
      puts language 
      for i in 0..style_hash[language].size-1
        (hash[language][:style] ||= []) << style_hash[language][i]
      end
    end
  end
  hash
end
