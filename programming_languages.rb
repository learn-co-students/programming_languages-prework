require 'pry'

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, method_data|
    method_data.each do |language, data|
       data.each do |key, value|
         if new_hash[language].nil?
          new_hash[language] = {}
        end 
         new_hash[language][:style] ||= [] 
         new_hash[language][:style] << style
        if new_hash[language][key].nil?
          new_hash[language][key] = value
          end 
      end
    end 
  end
  new_hash
end
 