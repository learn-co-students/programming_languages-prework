require 'pry'

def reformat_languages(languages)
new_hash = {}
  languages.each do |lang_type, value|
    value.each do |language, type_and_value|
      type_and_value.each do |type, type_value|
        new_hash[language] = {type: type_value}
        
      end
    end
  end
  new_hash
end
