

def reformat_languages(languages)
  reformated = {}
  languages.each do |style, language|
    language.each_key{|name| if !reformated[name] then reformated[name] = language[name] end}

    language.each_key do |name| 
      if reformated[name][:style]
        reformated[name][:style] << style
      else
        reformated[name][:style] = [style]
      end
    end

  end
  reformated
end
