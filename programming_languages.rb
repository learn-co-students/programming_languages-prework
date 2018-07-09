require 'pry'


def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |style, language_hash|
    language_hash.each do |language, attribute_hash|
      new_hash[language] ||= attribute_hash
        new_hash[language][:style] ||= []
        new_hash[language][:style].push(style)
    end
  end
  new_hash
end
