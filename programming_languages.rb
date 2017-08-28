require "pry"

def reformat_languages(languages)
  # your code here
  result = {}
  languages.each do |style, languages_hash|
    languages_hash.each do |language, attributes_hash|
      if (result[language] == nil) then result[language] = {style: []}
      end
      attributes_hash.each do |type, type_value|
        result[language][type] = type_value
        result[language][:style] << style
      end
    end
  end
  result
end

# languages = {
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
#
#   }
# }
# reformat_languages(languages)
