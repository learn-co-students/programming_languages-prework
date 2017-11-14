require 'pry'
def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |style, language|
    language.each do |program, type_hash|
      type_hash.each do |type, value|
       if new_hash[program] == nil
          new_hash[program] = {}
       end

          new_hash[program][:style] || new_hash[program][:style] = []
          new_hash[program][:style].push(style)

       if new_hash[program][type] == nil
          new_hash[program][type] = value
       end
       end
     end
  end
  new_hash
end
