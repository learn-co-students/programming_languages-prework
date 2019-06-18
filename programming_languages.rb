require 'pry'
def reformat_languages(languages)
new_hash = {}
  languages.each do |type_of_languages, names|
    
   names.each do |type, value|
     new_hash[type] ||= value
    new_hash[type][:style] ||= []
 new_hash[type][:style] << type_of_languages

  
  #binding.pry
   end
  end
  new_hash    
end
