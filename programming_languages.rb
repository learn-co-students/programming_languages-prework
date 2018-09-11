require 'pry'

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, lan_list|
      lan_list.each do |key, value|
        if new_hash[key]
          new_hash[key][:style] << style
        else
          new_hash[key] = {type: value[:type], style:[]}
          new_hash[key][:style] << style
        end
      end
    end
  new_hash
end


#iterate
