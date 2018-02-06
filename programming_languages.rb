def reformat_languages(languages)
    hash = {}
    languages.each do |style, language|
        language.each do |lang, type|
            if !hash.has_key?(lang)
                hash[lang] = {}
            end
            if !hash[lang].has_key?(:style)
                hash[lang][:style] = []
            end
            hash[lang][:style] << style
            hash[lang][:type] = type[:type]
        end
    end
    puts hash.inspect
    hash
end
