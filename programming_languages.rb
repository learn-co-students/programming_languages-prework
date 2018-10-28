require "pry"
# > {:oo=>
#   {:ruby=>{:type=>"interpreted"},
#    :javascript=>{:type=>"interpreted"},
#    :python=>{:type=>"interpreted"},
#    :java=>{:type=>"compiled"}},
#  :functional=>
#   {:clojure=>{:type=>"compiled"},
#    :erlang=>{:type=>"compiled"},
#    :scala=>{:type=>"compiled"},
#    :javascript=>{:type=>"interpreted"}}}
def reformat_languages(languages)
  new_hash = {}
  ary = []

  languages.each do | styles_hash, language_hash |

    language_hash.each do | name_hash, type_hash |
            if !new_hash[name_hash]
            new_hash[name_hash] = type_hash
          end
          if !new_hash[name_hash].has_key?(:style)


            new_hash[name_hash][:style] = []




          end
          new_hash[name_hash][:style].push(styles_hash)
    end
 end
new_hash
end
