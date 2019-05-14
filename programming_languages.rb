require 'pry'
def reformat_languages(languages)
    x = []
    y = []
    languages.each do |style,info|
        info.each do |language,details|
            x.push(style)
            y.push(language)
        end
    end
    new_hash = {}
    languages.each do |style,info|
        info.each do |language,details|
            new_hash[language] = details
        end
    end

    new_hash.each do |language, details|
        details[:style] = []
        y.each do |info|
            if language == info
                needed_index = y.index(info)
                details[:style] << x[needed_index]
                y.delete_at(needed_index)
                x.delete_at(needed_index)
            end
        end
    end
    new_hash
end