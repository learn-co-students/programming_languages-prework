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

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, lang|
    lang.each do |lang, type|
      type.each do |type, value|
        if new_hash.keys.include?(lang)
          new_hash[lang][:style] << style
        else
          new_hash[lang] = {:type => value, :style => [style]}
        end
      end
    end
  end
  new_hash
end
