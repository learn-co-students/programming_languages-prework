require "pry"

def reformat_languages(languages)
  new_hash = {}

  languages.each do |key, value|
    languages[key].each do |k, v|


      new_hash[k] = v if new_hash[k] == nil


      if new_hash[k].keys.include?(:style)
        new_hash[k][:style] << key
      else
        new_hash[k][:style] = [] << key
      end

    end
  end

  new_hash
end
