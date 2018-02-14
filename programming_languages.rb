require "pry"

def reformat_languages(languages)
    reformatted = {}
    
    languages.each do |style, language|
        
        language.each do |name, type_hash|
            type = type_hash[:type]
        
            if reformatted[name] == nil
                reformatted[name] = {type: type, style: [style]}
            else
                reformatted[name][:style] << style
            end
        end
    end
    
    reformatted
end