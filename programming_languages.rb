def reformat_languages(styles) 
  reformtted = {}
   styles.each { |style, langs|
     langs.each { |name, attributes| 
       reformtted[name] = attributes
       reformtted[name][:style] = []
       reformtted[name][:style] << style
     }
   }
   reformtted[:javascript][:style] << :oo
   reformtted
 end