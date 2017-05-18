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
  new_hash = {}
  languages.each do |style, language|
    language.each do |name, att|
      att.each do |type, value|
        new_hash[name] = {type => value, :style => []} unless new_hash.include?(name)
        new_hash[name][:style] << style
      end
    end
  end
  new_hash
end
