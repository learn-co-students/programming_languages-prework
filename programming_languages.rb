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
    v.each do |lang, type|
      new_hash[lang] = type
      if lang == :ruby
        new_hash[lang].merge!({lang => {:style => [:oo]}})
        # binding.pry
      end
      # binding.pry
    end
  end
  new_hash
  binding.pry
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
