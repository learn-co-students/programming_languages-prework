require "pry"

def reformat_languages(languages)
  new_hash = {}

  languages.each do |style, values|

    values.each do |language, type_hash|

      if new_hash[language] == nil
        new_hash[language] = type_hash
      end

      if new_hash[language][:style] == nil
        new_hash[language][:style] = []
      end

      new_hash[language][:style] << style

    end
  end

  new_hash

end
