def reformat_languages(languages)
  new_hash ={}
  languages.each do |style, style_values|
    style_values.each do |lang, lang_info|
      # defining all the value and parts of the hash 
      if !new_hash.include?(lang) #setting up the new hash with language first 
        new_hash[lang] = { 
          :type => lang_info[:type],
          :style => [style]
}            # if theres no type then the else statement pushes out the hash in the correct order.
    else new_hash[lang][:style].push (style)
  end 
end 
end 


puts new_hash
return new_hash
end
