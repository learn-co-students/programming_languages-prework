require "pry"
def reformat_languages(languages)
  # your code here
  new_hash ={}
  languages.each { |style, style_hash|
    style_hash.each{ |lang, language_hash|
      if new_hash[lang]== nil
        new_hash[lang]={language_hash.keys[0] => language_hash.values[0]}
        new_hash[lang][:style] = [style]
      else
        new_hash[lang][:style] << style
      end
    }
  }
  new_hash
end

#
# languages = {
#   :oo => {
#     :ruby => {:type => "interpreted"},
#     :javascript => {:type => "interpreted"},
#     :python => {:type => "interpreted"},
#     :java => {:type => "compiled"}
#   },
#   :functional => {
#     :clojure => {:type => "compiled"},
#     :erlang => {:type => "compiled"},
#     :scala => {:type => "compiled"},
#     :javascript => {:type => "interpreted"}
#   }
# }
#
# {
#   :ruby => {:type => "interpreted", :style => [:oo]},
#   :javascript => {:type => "interpreted", :style => [:oo, :functional]},
#   :python => {:type => "interpreted", :style => [:oo]},
#   :java => {:type => "compiled", :style => [:oo]},
#   :clojure => {:type => "compiled", :style => [:functional]},
#   :erlang => {:type => "compiled", :style => [:functional]},
#   :scala => {:type => "compiled", :style => [:functional]}
# }
