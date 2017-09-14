def reformat_languages(languages)
  new_hash = {}

  languages.each do |oofunctional, langhash|
    langhash.each do |lang, typehash|
      typehash.each do |key, value|
         if lang == :javascript
           new_hash[lang] = {:type => value, :style => [:oo, :functional]}
         else
          new_hash[lang] = {:type => value, :style =>[oofunctional]}
      end
    end
  end
end 
  new_hash


end
