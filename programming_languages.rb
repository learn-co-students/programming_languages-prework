require 'pry'
def reformat_languages(languages)
  # your code here
  #build it downwards

  new_hash = {}
  languages.each do |kind,language_name|
    language_name.each do |language, type|
      new_hash[language] = {}
    end
  end
  binding.pry
  new_hash.each do |language|
    #language[:type] = #each language type from the previous hash must go here
  end
end
