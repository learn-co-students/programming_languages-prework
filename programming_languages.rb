require 'pry'
def reformat_languages(languages)
  hash = {}

  languages.each do |key, val|
    val.each do |key2, val2|
      val2.each do |key3, val3|
        if hash[key2].nil?
          hash[key2] = {}
        end
        hash[key2][:style] ||= []
        hash[key2][:style].push(key)
        if hash[key2][key3] == nil
          hash[key2][key3] = val3
        end
      end
    end
  end
  return hash
end
