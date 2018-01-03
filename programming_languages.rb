require "pry"

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style,lang_list|
    lang_list.each do |lang,type_data|
      new_hash[lang] = {}
      type_data.each do |k,v|
        new_hash[lang][k] = v
        style_array = []
        style_array << style
        new_hash[lang][:style] = style_array
      end
    end
  end
  new_hash
end
