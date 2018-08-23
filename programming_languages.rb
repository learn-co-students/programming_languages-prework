require 'pry'

def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |style, language_and_data|
    language_and_data.each do |language, data|
        if new_hash[language] == nil
            new_hash[language] = data
            new_hash[language][:style] = []
        end
        new_hash[language][:style] << style
    end
  end
new_hash
end

# languages = {
#   style :oo => {
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
