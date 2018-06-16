
require "pry"

def reformat_languages(languages)
  new_hash = {}

  languages.each do |language_style, style_hash|
    style_hash.each do |language_name, name_hash|
      name_hash.each do |language_type, type_value|
        new_hash[language_name] ?
        new_hash[language_name][:style] << language_style :
        new_hash[language_name] = {language_type => type_value, :style => [language_style]}
      end
    end
  end
  return new_hash
end
