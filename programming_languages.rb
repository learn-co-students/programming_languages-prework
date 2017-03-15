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
  # your code here
  new_hash = {}
  languages.each do |style, language|
    language.each do |language,type|
      type.each do |type, value|
        new_hash[language.to_sym] = {type => value}
        new_hash[language.to_sym][:style] = []
      end
    end
  end
  languages.each do |style, language|
    language.each do |language, type|
      if new_hash.any?{|k,v| k == language}
        new_hash[language][:style] << style
    end
  end
end
new_hash
end

reformat_languages(languages)
