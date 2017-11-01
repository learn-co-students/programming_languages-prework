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
  new_hash = {}
  languages.each do |orient, language|
    language.each do |lan, type|
      if new_hash.include?(lan)
        new_hash[lan][:style].push(orient)
      else
        new_hash[lan] = type
        new_hash[lan][:style] = [orient]
        # puts new_hash
      end
    end
  end
  new_hash
end
puts reformat_languages(languages)
