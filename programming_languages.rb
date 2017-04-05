require 'pry'

def reformat_languages(languages)
  # create a new hash
  new_hash = {}

  # iterate through the languages, and set the new idex items
  languages.each do |style_item, style_values|
    style_values.each do |language_item, language_values|
      language_values[:style] = []
      new_hash[language_item] = language_values
    end
  end

  # iterate again, and push the style values
  languages.each do |style_item, style_values|
    style_values.each do |language_item, language_values|
      new_hash[language_item][:style] << style_item
    end
  end

  # return our new hash
  puts new_hash
  new_hash
end

#TESTING

# languages = languages = {
#   :oo => {
#     :ruby => {
#       :type => "interpreted"
#     },
#     :javascript => {
#       :type => "interpreted"
#     },
#     :python => {
#       :type => "interpreted"
#     },
#     :java => {
#       :type => "compiled"
#     }
#   },
#   :functional => {
#     :clojure => {
#       :type => "compiled"
#     },
#     :erlang => {
#       :type => "compiled"
#     },
#     :scala => {
#       :type => "compiled"
#     },
#     :javascript => {
#       :type => "interpreted"
#     }
#   }
# }
#
# reformat_languages(languages)
