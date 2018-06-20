def reformat_languages(languages)
  new_hash = {}

  languages.each do |style, items|

    items.each do |name, info|

      info.each do |type, value|

        if new_hash.include?(name)
          new_hash[name][:style] << style
        else
          new_hash[name] = {
            type => value,
            style: [] << style
          }
        end
      end
    end
  end
  new_hash
end
