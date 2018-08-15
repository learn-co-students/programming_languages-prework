require 'pry'
def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.keys.each do |style|
    languages[style].keys.each do |language|
      new_hash[language] = {}
      languages[style][language].each do
         new_hash[language][:style] = []
          end
      end 
    end 
  
  languages.keys.each do |style|
    languages[style].keys.each do |language|
      languages[style][language].each do
       end
        languages[style][language].each do |type, values|
          new_hash[language][:type] = values
          new_hash[language][:style].push(style)
        end
    end 

  end 

    binding.pry
end
