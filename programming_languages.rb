require "pry"

def reformat_languages(languages)
  new_hash = {}

  languages.each do |styles, values|
    values.each do |language, type|
      type.each do |k, v|
        if new_hash.include?(language)
          new_hash[language][:style] << styles
        else
          new_hash[language] = {type: v, style: [styles]}
        end
      end
    end
  end
  new_hash
end
