def reformat_languages(languages)
  # your code here
  require "pry"
  new_hash = {}
  languages.each do |style, langs|
    langs.each do |lang, props|
      #binding.pry
      new_hash[lang] = props
      new_hash[lang][:style] = []
    end
  #binding.pry
  end
  languages.each do |style, langs|
    langs.each do |lang, props|
      new_hash[lang][:style] << style
    end
  #binding.pry
  end

  #binding.pry
  puts new_hash
  new_hash
end
