languages = {
  :oo => {
    :ruby => { :type => "interpreted"  },
    :javascript => { :type => "interpreted" },
    :python => { :type => "interpreted" },
    :java => { :type => "compiled" }
          },
  :functional => {
    :clojure => { :type => "compiled" },
    :erlang => { :type => "compiled" },
    :scala => { :type => "compiled" },
    :javascript => { :type => "interpreted" }
    } }

{
  :ruby => { :type => "interpreted",
             :style => [:oo] },
  :javascript => { :type => "interpreted",
             :style => [:oo, :functional] },
  :python => { :type => "interpreted",
               :style => [:oo] },
  :java => { :type => "compiled",
             :style => [:oo] },
  :clojure => { :type => "compiled",
                :style => [:functional] },
  :erlang => { :type => "compiled",
               :style => [:functional] },
  :scala => { :type => "compiled",
              :style => [:functional] } }