def reformat_languages(languages)
  # your code here
  new_languages = {}
  languages.each {|style, obj|
    
    obj.each {|lang, obj2|
      if new_languages[lang] == nil 
        new_languages[lang] = {:type => obj2[:type], :style => [style]}
      else
        new_languages[lang][:style] << style
      end
    }
  }
  new_languages
end
