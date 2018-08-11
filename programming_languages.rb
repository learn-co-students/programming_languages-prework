require "pry"

def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |oo_or_functional, language_hash|
    language_hash.each do|language, attribute_hash|
      attribute_hash.each do|attribute, attribute_value|
        if !new_hash[language]
          new_hash[language] = {attribute => attribute_value, style: []}
        end
        new_hash[language][:style] << oo_or_functional
      end
    end
  end
  new_hash
end
