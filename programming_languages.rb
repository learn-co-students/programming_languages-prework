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
 new_lang = {} #new hash
  languages.each do |style, lang| #takes in style and language as block
    lang.each do |name, attributes| 
      new_lang[name] = attributes
      new_lang[name][:style] = []
      new_lang[name][:style] << style
    end
  end
  new_lang[:javascript][:style] << :oo
  new_lang
end



