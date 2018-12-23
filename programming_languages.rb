require 'pry'

def reformat_languages(languages)
  new_hash = {}
  languages.each do |all_language, language|
    language.each do |keys, values|
  new_hash[keys] = values
  new_hash[keys][:style] = []
  new_hash[keys][:style] << all_language

 
  end
  end
  new_hash[:javascript][:style] << :oo
  new_hash
  end