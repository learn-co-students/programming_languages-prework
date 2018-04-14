def reformat_languages(languages)

 new_hash = {}

  languages.each do |first_tier, hash|



   hash.each do |language, type|



      if new_hash.has_key?(language)



         new_hash[language][:style] << first_tier

      else

         new_hash[language] = type

         new_hash[language][:style] = [first_tier]

     end
   end
  end
  new_hash
end
