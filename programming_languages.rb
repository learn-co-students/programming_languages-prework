require 'pry'

# {
#   :ruby => {
#     :type => "interpreted",
#     :style => [:oo]
#   },
#   :javascript => {
#     :type => "interpreted",
#     :style => [:oo, :functional]
#   },
#   :python => {
#     :type => "interpreted",
#     :style => [:oo]
#   },
#   :java => {
#     :type => "compiled",
#     :style => [:oo]
#   },
#   :clojure => {
#     :type => "compiled",
#     :style => [:functional]
#   },
#   :erlang => {
#     :type => "compiled",
#     :style => [:functional]
#   },
#   :scala => {
#     :type => "compiled",
#     :style => [:functional]
#   }
# }

def reformat_languages(languages)
  new_hash = {}
  styleArr = []
  languages.each do |k, v|
    styleArr << k
    # binding.pry
    v.each do |lang, type|
      type.store(:style, styleArr)
      new_hash[lang] = type
      # new_hash[lang] = { :style => styleArr }
      binding.pry
    end
  end
  new_hash
end
