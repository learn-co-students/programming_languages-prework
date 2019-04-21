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
  
  languages.each do |style,language_names|
    language_names.each do |language, type|
      new_hash[language] = {
        :type => type[:type],
        :style => []
      }
    end
  end
  
  languages.each do |style, language_names|
    language_names.each do |language, type|
        new_hash[language][:style] << style
    end
  end
  new_hash
end
