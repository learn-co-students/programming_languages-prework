def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, langs|
    langs.each do |lang_name, details|
      if !new_hash.has_key?(lang_name)
      new_hash[lang_name] = {
      :type => details[:type],
      :style => []
      }
  end
  new_hash[lang_name][:style] << style
end 
end 
new_hash
end 
