def reformat_languages(languages)
  new_hash = {:ruby => {:type => "interpreted", :style => [:oo]},
  :javascript => {:type => "interpreted", :style => [:oo, :functional]},
  :python => {:type => "interpreted", :style => [:oo]}, :java => {:type => "compiled", :style => [:oo]}, :clojure => {:type => "compiled", :style => [:functional]}, :erlang => {:type => "compiled", :style => [:functional]}, :scala => {:type => "compiled" => :style => [:functional]}
  }
end
