require 'pry'
def reformat_languages(languages)
  # your code here
  #build it downwards

  new_hash = {}
  languages.each do |kind,language_name|
    language_name.each do |language, type|
      style_hash = {:style => [kind]}
      new_hash[language] = {}.merge(type).merge(style_hash)

    end
  end
  
  new_hash
end
