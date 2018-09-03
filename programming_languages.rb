def reformat_languages(languages)
languages.each_with_object({}) do |(style,language_to_type_hash),h|
  language_to_type_hash.each do |language,type_hash|
    h.update(language=> { type: type_hash[:type], style: [style] }) do |_,o,_|
      o.merge(style: [style]) { |_,ostyle_arr,nstyle_arr| ostyle_arr + nstyle_arr }
    end
  end
end
end 
