require 'pry'

def reformat_languages(languages)
  new_hash = {}
  languages.each do |classes, subclass|
    subclass.each do |type, language|
      new_hash[type] = language
    end
  end
  languages.each do |classes, subclass|
    subclass.each do |type_and_style, language|
      new_hash[type_and_style][:style] = [classes]
    end
  end
  new_hash[:javascript][:style] << :oo
  new_hash
end
