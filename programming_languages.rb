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
  #Initialize empty new hash to store elements of the new hash being built
  languages_first = {}

 
  #Pull the bottom layers directly out of the original hash
  languages.each do |style, data|
    data.each do |language, information|
      languages_first[language] = information
    end
  end
  
  #initialize style arrays
  languages.each do |style, data|
    data.each do |language, information|

      languages_first[language][:style] = []
    end
  end

  #Add in styles
  languages.each do |style, data|
    data.each do |language, information|
      languages_first[language][:style].push(style)
    end
  end
  return languages_first
end

