require 'pry'
def reformat_languages(languages)
  new_hash = {}
  style_hash = {}
  langs_arr = []

  languages.each {|style, langs|
    langs.each {|lang,info|
      if langs_arr.include?(lang)
        style_hash[lang] << style
      else
        style_hash[lang] = [style]
        langs_arr << lang
      end
      info.each {|type, val|
        new_hash[lang] = {type => val, :style => style_hash[lang]}
        }
      }
    }
  new_hash
end
