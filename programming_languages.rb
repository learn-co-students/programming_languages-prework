def reformat_languages(languages)
  new_language_hash={}

 languages.each do |language_orientation,language_name|
   language_name.each do|language_name_out, type|
    out_name =  language_name_out
    t = type[:type]
    orientation = language_orientation
     new_language_hash[language_name_out]={type:t,style: [language_orientation]}
  end
end
  return new_language_hash
end
