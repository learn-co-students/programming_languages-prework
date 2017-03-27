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

{
    :ruby => {
        :type => "interpreted",
        :style => [:oo]
    },
    :javascript => {
        :type => "interpreted",
        :style => [:oo, :functional]
    },
    :python => {
        :type => "interpreted",
        :style => [:oo]
    },
    :java => {
        :type => "compiled",
        :style => [:oo]
    },
    :clojure => {
        :type => "compiled",
        :style => [:functional]
    },
    :erlang => {
        :type => "compiled",
        :style => [:functional]
    },
    :scala => {
        :type => "compiled",
        :style => [:functional]
    }
}



def reformat_languages(languages)
    new_hash={}
    second_hash={}
   array = []
    languages.keys.each do |styles|
        languages[styles].each do |lang, type|
            new_hash[lang] = type
            second_hash[lang]={:style=>[styles]}
            if lang == :javascript
                second_hash[lang] = {:style=>[:oo, :functional]}
                end
        end
        end
    new_hash.merge(second_hash){|key, new, second| new.merge second}
end
