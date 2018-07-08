def reformat_languages(languages)
reformatted = {}

  languages.each do |function, lang|
    lang.each do |idioma, data|
      if reformatted[idioma] == nil
        reformatted[idioma] = data
      end

      if reformatted[idioma][:style] == nil
        reformatted[idioma][:style] = [function]
      else
        reformatted[idioma][:style].push(function)
      end
    end
  end 
  reformatted
end