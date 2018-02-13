require "pry"
#{
#  :ruby => {
#    :type => "interpreted",
#    :style => [:oo]
#  },

def reformat_languages(languages)
  new_hash = {}
  languages.each {|style_key, style_value|
    style_value.each {|language_key, language_value|
      already_exists = true
      if new_hash.key?(language_key) == false
        style_array = []
        new_hash[language_key] = {}
        already_exists = false
      end
      language_value.each {|type_key, type_value|
        new_hash[language_key][type_key] = type_value
        new_hash[language_key][:style] = style_array.push(style_key) if already_exists == false
        new_hash[language_key][:style].push(style_key) if already_exists == true
      }
    }
  }
  new_hash
end
