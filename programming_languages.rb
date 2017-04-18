require 'pry'

def reformat_languages(data)
  new_hash = {}
  data.each do |style, languages|
    languages.each do |lang, attributes|
      attributes.each do |attributes, val|
        if new_hash[lang].nil?
          new_hash[lang] = {
            type: val,
            style: [style]
          }
        else
          new_hash[lang][:style] << style
        end
      end
    end
  end
  new_hash
end

