def reformat_languages(languages)
  new_hash = {}
  
    languages.each do |styles, lang|
      lang.each do |lang, type|
        new_hash[lang] ||= type
        new_hash[lang][:style] ||= []
        new_hash[lang][:style] << styles
    end 
  end
  new_hash
end

