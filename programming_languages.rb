require 'pry'
def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |style, data|
    data.each do |language, data2|
      if new_hash[language] == nil
        new_hash[language] = {}
      end
        data2.each do |type, value|
        new_hash[language][:type] = value
        if new_hash[language][:style] == nil
          new_hash[language][:style] = [] 
        end
        new_hash[language][:style] << style
      end
    # binding.pry
    end
  end
  new_hash
end
