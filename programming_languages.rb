require 'pry'
def reformat_languages(languages)
  new_language_hash = {}
  
  languages.each do |style, language_info|
    language_info.each do |language, characteristics|
      if (!new_language_hash[language])
        new_language_hash[language] = characteristics
      end
      #binding.pry
      if (!new_language_hash[language][:style])
        new_language_hash[language][:style] = []
      end
      new_language_hash[language][:style].push(style)
    end
  end  
  return new_language_hash
end
