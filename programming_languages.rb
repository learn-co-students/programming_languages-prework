require 'pry'

def reformat_languages(languages)

  new_hash = {}

  languages.each do |language_category, language_category_data|
    style_attr = language_category
    language_category_data.each do |language_name, language_name_type|
      if new_hash[language_name] == nil
        new_hash[language_name] = language_name_type
        #binding.pry
        new_hash[language_name].merge!({style: [style_attr]})
        #binding.pry
      else
        new_hash[language_name][:style] << style_attr
        #binding.pry
      end

    end
        #binding.pry
  end
  new_hash
end
