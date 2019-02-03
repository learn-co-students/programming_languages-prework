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
  reformatted_hash = {}
  languages.each do |style_name, language_hash|
    language_hash.each do |language_name, descriptions_hash|
      
      if reformatted_hash.has_key?(language_name)
        reformatted_hash[language_name][:style] << style_name
      else
        reformatted_hash[language_name] = descriptions_hash
        reformatted_hash[language_name][:style] = [style_name]
      end
    end
  end
  reformatted_hash
end
