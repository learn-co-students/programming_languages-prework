def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, target_lang|

    target_lang.each do |language, types|
      if new_hash[language] != nil
        new_hash[language][:style] = new_hash[language][:style].push(style)
      else
        new_hash[language] = {type: types[:type], style: [style]}
        #new_hash[language][:style] =  style
      end
    end
  end
  puts new_hash
  return new_hash
end
