require 'byebug'
# require 'pry'

def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |oo_or_functional, lang_hash|
    lang_hash.each do |language, type|
      # byebug
      if new_hash[language] == nil
        new_hash[language] = type
        new_hash[language][:style] = [oo_or_functional]
      else
        new_hash[language][:style] << oo_or_functional
      end
    end
  end
  new_hash
end
