require 'pry'

def reformat_languages(languages)

  new_hash = {}

  languages.each do |style, data|
    data.each do |language_name, data|

      if !new_hash.has_key?(language_name)
        new_hash[language_name] = {}
        new_hash[language_name][:type] = data[:type]
        new_hash[language_name][:style] = [style]
      else
        new_hash[language_name][:style] << style
      end

    end
  end

  new_hash

end
