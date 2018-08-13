# require "pry"
#
# def reformat_languages(languages)
#   languages.each do |style, hashes|
#     binding.pry
#     hash.each do |name, attributes|
#       binding.pry
#       data.each do |attributes|
#         binding.pry
#       end
#     end
#   end
# end

#languages hash
#keys are styles of the languages => values are hashes
#keys of the name of the languages => values are the languages attributes
#language attributes => value pairs

def reformat_languages(languages)
  new_hash = {}
  languages.each do |styles, hashes|
    hashes. each do |name, attributes|
      if new_hash[name]
        new_hash[name][:style] << styles
      else
        style_array = []
        style_array << styles
        attributes[:style] = style_array
        new_hash[name] = attributes
      end
    end
  end
  return new_hash
end
