=begin require 'pry'
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
  # your code here
  new_hash = {}
  languages.each do |mode, mode_data|
    mode_data.each do |lang, type|
      new_hash[lang] = type
      new_hash[:style] = mode
      #binding.pry
    end
  end
  new_hash
end

#reformat_languages(languages)