require 'pry'

def new_array(languages)
  array = []
  languages.collect do |key, value|
    array << value.keys
  end
  array.flatten.uniq
end


def language_info(languages, language)
  new_hash = {}
  new_hash[:style] = []
  languages.each do |key, value|
    if value.has_key?(language)
      new_hash[:type] = value[language][:type]
      new_hash[:style] << key
    end  
  end
  binding.pry
  new_hash
end

def reformat_languages(languages)
  hash = {}
  new_array(languages).each do |language|
    hash[language] = language_info(languages, language)
  end
  hash
end
