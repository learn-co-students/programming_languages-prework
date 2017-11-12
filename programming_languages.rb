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
  style_holder = []
  new_hash = {}
  languages.each do |k, v|
    style_holder.push(k)
    # binding.pry
    v.each do |lang, type|
      new_hash[lang] = type
      # binding.pry
    end
  end
  new_hash
end
