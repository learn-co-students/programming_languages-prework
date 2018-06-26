def reformat_languages(languages)
  new_hash = {}
  # your code here
  languages.each do |paradigm, data|
    data.each do |language, type|
      new_hash[language] = {
        type: type[:type],
        style: []
      }
      #new_hash[language][:style] = []
      #new_hash[language][:style] << paradigm
    end
  end
  
  languages.each do |paradigm, data|
    data.each do |language, type|
      new_hash[language][:style] << paradigm
    end
  end
  
  new_hash
end
