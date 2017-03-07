require "pry"







def reformat_languages(languages)

new_hash = {}

  languages.each do |style, lang_key|
    lang_key.each do |name, type_hash|

      new_hash[name.to_sym] = {}

    end

    lang_key.each do | name, type_hash |


      type_hash.each do | type_word, type_description |

        new_hash[name.to_sym][type_word] = type_description
        new_hash[name.to_sym][:style] = []

      end

    end
  end

  languages.each do |style, lang_key|
    lang_key.each do |name, type|
      if new_hash.any? { |n, t| n == name}

        new_hash[name.to_sym][:style] << style

      end

    end

  end

new_hash
end
