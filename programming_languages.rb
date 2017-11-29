require "pry"

def reformat_languages(languages)
    hash = {}
    languages.each do |style, lang_hash|
        lang_hash.each do |language, type_hash|
            if hash.has_key?(language)
                hash[language][:style] << style
            else
                hash[language] = type_hash
                hash[language][:style] = [style]
            end
        end
    end
    hash
end

#def reformat_languages(languages)
#    new_hash = {}
#    languages.each do |style, attributes|
#        attributes.each do |language, attribute|
#            new_hash[language] = attribute
#            new_hash[language][:style] = [style]
#        end
#    end
#    new_hash
#end






