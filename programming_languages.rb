require "pry"

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, language|
    language.each do |name, attributes|
    if name == :javascript && style == :functional
    else
      new_hash[name] = attributes
      new_hash[name][:style] = []
    end
    new_hash[name][:style] << style
    end
  end
  new_hash
end
