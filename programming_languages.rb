require 'pry'
def reformat_languages(languages)
  # your code here
  #build it downwards

  new_hash = {}
  languages.each do |kind,language_name|
    language_name.each do |language, type|
      new_hash[language] = {}.merge(type)

    end
  end
  binding.pry
  new_hash
end
