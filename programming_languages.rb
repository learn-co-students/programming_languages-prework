require 'pry'

def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each { |style, langs|
    langs.each { |lang, att|
      new_hash[lang] ||= att
      new_hash[lang][:style] ||= []
      new_hash[lang][:style] << style
    }
  }
  new_hash
end
