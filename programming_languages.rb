require 'pry'

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, lang|

    lang.each do |l|
      # l key / hash value containing type and style
      # check if language already belongs to new_hash
      # shove style to [style]
      if !new_hash.key?(l[0])
        new_hash[l[0]] = l[1]
        new_hash[l[0]][:style] = [style]
      else
        new_hash[l[0]][:style] << style
      end
    end
  end
  new_hash
end
