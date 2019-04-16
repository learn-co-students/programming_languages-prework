def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |style, langs_list|
    langs_list.each do |lang, type|
      new_hash[lang]= {
          type: type[:type],
          style: []
      }
    end
  end
  languages.each do |style, langs_list|
    langs_list.each do |lang, type|
      new_hash[lang][:style] << style
    end
  end
  new_hash
end
