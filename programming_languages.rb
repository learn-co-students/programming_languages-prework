def reformat_languages(languages)
  new_hash = {}
  
  languages.map do | style_name, style |
    style.map do | language, type_info |
      new_hash[language] = type_info.merge! :style => [style_name]
    end
  end
  
  new_hash[:javascript][:style].unshift(:oo)
  
  new_hash
end