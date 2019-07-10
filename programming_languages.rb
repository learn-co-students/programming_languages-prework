require 'pry'

languages1 = {
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


def reformat_languages(startarr)
  new_hash = {}
  startarr.keys.each do |style1|
    startarr[style1].keys.each do |language|
      startarr[style1][language].each do |key,val|
        if new_hash[language] == nil
          new_hash[language] = {key => val}
          if new_hash[language][:style] == nil
            new_hash[language][:style] = []
            new_hash[language][:style] << style1
          else
            new_hash[language][:style] << style1
          end
        else
          if new_hash[language][:style] == nil
            new_hash[language][:style] = []
            new_hash[language][:style] << style1
          else
            new_hash[language][:style] << style1
          end
        end
          
      end
    end
  end
  new_hash
end

