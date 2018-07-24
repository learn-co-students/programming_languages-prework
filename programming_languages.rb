def reformat_languages(languages)
  new_hash={}
  languages.each do |style,language|
    language.each do|name,attribute|
       if new_hash[name]
          new_hash[name][:style]<< style
       else 
          new_hash[name]=attribute
          new_hash[name][:style]=[]
          new_hash[name][:style]<< style
       end
    end
  end
  new_hash
end