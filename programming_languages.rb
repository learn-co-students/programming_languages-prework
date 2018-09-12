def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |mode, mode_data|
    mode_data.each do |lang, type|
      if new_hash[lang] == nil
        new_hash[lang] = {:type => type[:type]}
      end
      #binding.pry
      if new_hash[lang][:style] == nil
        new_hash[lang][:style] = [mode]
      else 
        new_hash[lang][:style] << mode
      end
      #binding.pry
    end
  end
  new_hash
end

#reformat_languages(languages)