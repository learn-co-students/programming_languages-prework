#require = "pry"
def reformat_languages(languages)
  new_hash = {}
  languages.each do |styles, lang|
    #binding.pry
    lang.each do |prog, data|
      new_hash[prog] = data
      new_hash[prog][:style] = []
    end
  end
  languages.each do |styles, lang|
    lang.each do |prog, data|
      new_hash[prog][:style] << styles
    end
  end
  new_hash
end
