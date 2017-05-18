def reformat_languages(languages)
  new_language_hash={}

 languages.each do |type,hash|

   hash.map do|name, attributes|
    new_language_hash[name]||=attributes
    new_language_hash[name][:style]||=[]
    new_language_hash[name][:style]<< type
  end
end
  return new_language_hash
end 
