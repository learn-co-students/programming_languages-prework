def reformat_languages(languages)
  # your code here
  new_format = {}
  languages.each { |style,langs|
    langs.each{ |lang, atts|
      if new_format.keys.member?(lang)
        new_format[lang][:style] << style
      else
        new_format[lang] = atts
        new_format[lang][:style] = [style]
      end
    }
  }
  new_format
end
