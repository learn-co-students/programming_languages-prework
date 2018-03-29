def reformat_languages(languages)
  new_hash={}
    languages.each do |style, list|
      list.each do |language, data|
        data.each do |key, value|
          if new_hash[language] == nil
            new_hash[language] = {key => value}
            new_hash[language][:style] = [style]
          else
            new_hash[language][:style] << style
          end
        end
      end
    end
  # your code here
  new_hash
end



###NEW###
#{
#  :ruby => {
#    :type => "interpreted",
#    :style => [:oo]
#  },
#  :javascript => {
#    :type => "interpreted",
#    :style => [:oo, :functional]
#  },
#  :python => {
#    :type => "interpreted",
#    :style => [:oo]
#  },
#  :java => {
#    :type => "compiled",
#    :style => [:oo]
#  },
#  :clojure => {
#    :type => "compiled",
#    :style => [:functional]
#  },
#  :erlang => {
#    :type => "compiled",
#    :style => [:functional]
#  },
#  :scala => {
#    :type => "compiled",
#    :style => [:functional]
#  }
#}

###OLD###
#languages = {
#  :oo => {
#    :ruby => {
#      :type => "interpreted"
#    },
#    :javascript => {
#      :type => "interpreted"
#    },
#    :python => {
#      :type => "interpreted"
#    },
#    :java => {
#      :type => "compiled"
#    }
#  },
#  :functional => {
#    :clojure => {
#      :type => "compiled"
#    },
#    :erlang => {
#      :type => "compiled"
#    },
#    :scala => {
#      :type => "compiled"
#    },
#    :javascript => {
#      :type => "interpreted"
#    }
#
#  }
#}
