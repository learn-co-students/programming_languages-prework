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
  new_language_hash = {}
  #new hash for storing stuff in later
  languages.each do |oo_or_functional, language_hash|
    #iterate thru the hash grabbing keys & values
    #oo_or_functional: oo hash or functional hash
    #language_hash: another hash
    language_hash.each do |language, attribute_hash|
      #language: languages, (keys)
      #attribute_hash: another hash
        attribute_hash.each do |attribute, value|
          #attribute: type
          #value: interpreted or compiled
          if new_language_hash[language].nil?
            new_language_hash[language] = {}
          end
          new_language_hash[language][:style] ||= []
          new_language_hash[language][:style] << oo_or_functional
          if new_language_hash[language][attribute].nil?
            new_language_hash[language][attribute] = value
          end
        end
      end
    end
  new_language_hash
end
