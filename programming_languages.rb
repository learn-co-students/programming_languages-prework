require 'pry'
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
  out_hash = {}
  languages.each do |style, languages_hash|
    languages_hash.each do |language, info|  
      if out_hash[language]
        out_hash[language][:style] << style
      else
        out_hash[language]= {type: info[:type], style: [style]}
      end
    end
  end
  out_hash
end
