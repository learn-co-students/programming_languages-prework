require 'pry'

def reformat_languages(languages)
    new_hash = {}
    languages.each do |style, list|
        list.each do |language, attribute|
            new_hash[language]= attribute
            new_hash[language][:style] = []
        end
    end
    languages.each do |style, list|
        list.each do |language, attribute|
            new_hash[language][:style] << style
        end
    end
    new_hash
end
