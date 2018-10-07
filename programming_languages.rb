require "pry"

=begin
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
=end

def reformat_languages(languages)
  new_hash = {}

  languages.each do |programming, data|
    data.each do |language, type|
      new_hash[language] = {}
    end
  end

  languages.each do |programming, data|
    data.each do |language, type|
      type.each do |key, value|
        new_hash[language] = {type: value, style: []}
      end
    end
  end

  languages.each do |programming, data|
    data.each do |language, type|
      new_hash[language][:style] << programming
    end
  end

  new_hash
  
end
