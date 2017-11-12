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
  languages.each do |k, v|
    new_hash.store(v)
    binding.pry
  end
  new_hash
end


# def reformat_languages(languages)
#   new_hash = {}
#   styleArr = []
#   languages.each do |k, v|
#     styleArr << k
#
#     v.each do |lang, type|
#       type.store(:style, styleArr)
#       new_hash[lang] = type
#
#     end
#   end
#   new_hash
# end
