require "pry"

def reformat_languages(languages)
  new_hash = {}
  languages.each do |kind, language|
    language.each do |language_name, attributes|
      if new_hash[language_name]
        new_hash[language_name][:style] << kind
      else
        new_hash[language_name] = attributes
        new_hash[language_name][:style] = [kind]
      end
    end
  end
  new_hash
end