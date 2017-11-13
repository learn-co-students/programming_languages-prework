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
        new_hash[lang].merge!({:style => [:oo]})
      elsif lang == :javascript
        new_hash[lang].merge!({:style => [:oo, :functional]})
      elsif lang == :python
        new_hash[lang].merge!({:style => [:oo]})
      elsif lang == :java
        new_hash[lang].merge!({:style => [:oo]})
      elsif lang == :clojure
        new_hash[lang].merge!({:style => [:functional]})
      elsif lang == :erlang
        new_hash[lang].merge!({:style => [:functional]})
      elsif lang == :scala
        new_hash[lang].merge!({:style => [:functional]})
      end
    end
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
