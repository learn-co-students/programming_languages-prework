
def reformat_languages(languages)
  new_hash = {}

  languages.each do |style, language| 
    languages[style].each do |language, type|
      languages[style][language].each do |id, str|
        if new_hash.include?(language)
          new_hash[language][:style] << style
        else
          new_hash[language] = {}
          new_hash[language][:type] = str
          new_hash[language][:style] = []
          new_hash[language][:style] << style
        end
      end 
    end
  end 
  new_hash
end