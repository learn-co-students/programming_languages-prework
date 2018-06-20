def reformat_languages(languages)
  new_hash = {}
  
  languages.each do |style, language|
    language.each do |name, type_kv|
      if new_hash[name]
        new_hash[name][:style] << style
      else
        new_hash[name] = {style: [style], type: type_kv[:type]}
      end
    end
  end
  new_hash
end
