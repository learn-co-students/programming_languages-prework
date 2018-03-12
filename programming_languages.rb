def reformat_languages(languages)
new_hash = {}
languages.each do |key, value|

  value.keys.each do |lengua|

    new_hash[lengua]={:style=>[],:type=>""} if new_hash[lengua]==nil

    new_hash[lengua][:style]==nil ? new_hash[lengua][:style] = [] : new_hash[lengua][:style] << key

    languages[key][lengua].each do |type_key, type_value|

      new_hash[lengua][:type] = type_value

    end

  end

end

new_hash
end
