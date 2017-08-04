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
  # your code here



  newHash = {}
  languages.each do |key, value|
    lang = value.keys

    lang.each do |elem|

      if newHash[elem] == nil

        newHash[elem] = {}
        type = value[elem][:type]
        newHash[elem][:type] = type
        newHash[elem][:style] = [key]
      else
        #puts elem
        #puts newHash[elem]
        newHash[elem][:style].push(key)
      end

    end
  end
  return newHash
end

reformat_languages(languages)
