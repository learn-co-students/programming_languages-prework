
def reformat_languages(languages)
  new_hash = {}
  holdarray = []
  languages.collect do |style, data|
    data.collect do |language, specs|
      specs[:style] = [] 
        new_hash[language] = specs
        holdarray.push([language, style])
        specs.collect do |key, value|
          holdarray.each do |element|
            if element[0] == language 
              if !specs[:style].include?(element[1])
              specs[:style].push(element[1])
            end 
          end 
        end 
      end 
    end
  end 
  puts "#{holdarray}"
  new_hash
end

