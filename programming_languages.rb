def reformat_languages(languages)
  new_hash = {}
  languages.each do |type, language_stuff|
    language_stuff.each do |name, data|
      if new_hash[name]
        new_hash[name][:style] << type
      else
        new_hash[name] = { :type => data[:type], :style => [type] }
      end
    end
  end
  return new_hash
end

def hello
  puts 'hello world'
end
