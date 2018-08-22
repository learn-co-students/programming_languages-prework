require 'pry-byebug'

def reformat_languages(languages)
  # your code here
  new_hash = {}

  languages.each do |style,langs|

      langs.each do |lang, prop|
          # binding.pry
          # prop.key = type
          typeof, value = prop.first
          # [ruby] = oo

          if !new_hash.has_key?(lang)
              new_hash[lang] = {}
              new_hash[lang][typeof] = value
          end

          if new_hash[lang].has_key?(:style)
              new_hash[lang][:style].push(style)
          else
              new_hash[lang][:style] = [style]
          end

        
      end

  end
  # binding.pry
  new_hash

end
