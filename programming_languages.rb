def reformat_languages(languages)
  # your code here
  new_hash = {}

  languages.each do |function, langs|
    langs.each do |language, orientation|
      new_hash[language] = orientation
      new_hash[language][:style] = []
    end
  end


  languages.each do |function, langs|
    langs.each do |language, orientation|
      new_hash[language][:style] << function
    end
  end







   new_hash
end
