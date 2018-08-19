def reformat_languages(all_languages)
  reformated_list = {}
  all_languages.each do |style, languages|
    languages.each do |name, type_hash|
      if !reformated_list[name]
        reformated_list[name] = {type: type_hash[:type], style: [style]}
      else
        reformated_list[name][:style] << style
      end
    end
  end
  reformated_list
end
