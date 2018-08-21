def reformat_languages(languages)
    languages.each_with_object(Hash.new {|hash,key| hash[key] = {type: nil, style: []}}) do |(style,languages),obj|
      languages.each do |language,type|
        obj[language][:style] << style
        obj[language][:type] = type[:type]
    end
  end
end

