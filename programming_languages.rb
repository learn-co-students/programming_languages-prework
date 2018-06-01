def languages
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
end

def reformat_languages(languages)
  hash = {}
  #go into languages
  languages.each do |language, data|
    #go 1 into the nested hash oo & functional
    data.each do |name, info|
      #go 2 into those nested hashes
      info.each do |key, value|
        #go 3 into the nested hashes
        if hash.key?(name) == false
            hash[name] = {key => value, :style => [language]}
        else
          hash[name][:style] << language
        end
      end
    end
  end
  hash
end

reformat_languages(languages)
