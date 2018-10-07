require "pry"

def reformat_languages(languages)
  new_hash = {}

  languages.each do |programming, data|
    data.each do |language, type|
      new_hash[language] = {}
    end
  end

  languages.each do |programming, data|
    data.each do |language, type|
      type.each do |key, value|
        new_hash[language] = {type: value, style: []}
      end
    end
  end

  languages.each do |programming, data|
    data.each do |language, type|
      new_hash[language][:style] << programming
    end
  end

  new_hash
end
