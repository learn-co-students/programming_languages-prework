languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
 
  }
}


def reformat_languages(languages)
  new_hash = {}
  
  languages.each do |style, language|
    language.each do |name, data|
      new_hash[name]=data
    end
  end 
  new_hash

  new_hash[:ruby][:style] = [:oo]
  new_hash[:javascript][:style] = [:oo, :functional]
  new_hash[:python][:style] = [:oo]
  new_hash[:java][:style] = [:oo]
  new_hash[:clojure][:style] = [:functional]
  new_hash[:erlang][:style] = [:functional]
  new_hash[:scala][:style] = [:functional]
  
  new_hash
end

=begin {
  :ruby => {
    :type => "interpreted",
    :style => [:oo]
  },
  :javascript => {
    :type => "interpreted",
    :style => [:oo, :functional]
  },
  :python => {
    :type => "interpreted",
    :style => [:oo]
  },
  :java => {
    :type => "compiled",
    :style => [:oo]
  },
  :clojure => {
    :type => "compiled",
    :style => [:functional]
  },
  :erlang => {
    :type => "compiled",
    :style => [:functional]
  },
  :scala => {
    :type => "compiled",
    :style => [:functional]
  }
=end }
