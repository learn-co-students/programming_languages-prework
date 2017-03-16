
def reformat_languages(languages)
new_hash = { }
languages.each do |styles, data|
  data.each do |lang, types| 
    types.each do |type, value|
    if new_hash[lang].nil?
    new_hash[lang] = {}
    end
    # I need some help with this one.
    new_hash[lang][:style] ||= []
    new_hash[lang][:style] << styles
    if new_hash[lang][type].nil?
      new_hash[lang][type] = value
    end
   end
  end
 end
new_hash
end
