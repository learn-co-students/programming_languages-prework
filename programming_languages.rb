require 'pry'

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, language|
    language.each do |name, type|
      type.each do |attribute, value|
        if new_hash[name].nil?
          new_hash[name]={}
        end
          new_hash[name][:style] ||= []
          new_hash[name][:style]<<style
        if new_hash[name][attribute].nil?
          new_hash[name][attribute]=value
        end
      end
    end
  end
  new_hash
end
