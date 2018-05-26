def reformat_languages(languages)
  return_hash = {}
  languages.each do |style, programming_language|
    programming_language.each do |language, type|
      if return_hash[language] == nil
        (return_hash[language] = type).merge!({:style => [style]})
      else
        return_hash[language][:"style"]<<style
      end
    end 
  end
  return_hash
end
