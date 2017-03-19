languages = {
  :oo => {
    :ruby => { :type => "interpreted"  },
    :javascript => { :type => "interpreted" },
    :python => { :type => "interpreted" },
    :java => { :type => "compiled" }
          },
  :functional => {
    :clojure => { :type => "compiled" },
    :erlang => { :type => "compiled" },
    :scala => { :type => "compiled" },
    :javascript => { :type => "interpreted" }
    } }

    def reformat_languages(languages)
    new_hash = {}
    languages.each do |style, lang|
      lang.each { |l,type| new_hash[l] = {type: "", style: [] } }
    end
    languages.each do |style, lang|
      lang.each do |l,type|
        type.each do |t, s|
          new_hash[l][:type] = s
          new_hash[l][:style] << style
        end
      end
    end
    new_hash
  end


p reformat_languages(languages)
