require "pry"


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
    first_languages_hash = {}
    second_languages_hash = {}
    languages.each do |key, language|
        language.each do |name, type|
            first_languages_hash[name] = type
            #name_array << name
            #program_lang_name = name_array.uniq
            end
      end
    #adding all the styles to a different hash
    second_languages_hash[:ruby] = {:style => [:oo]}
    second_languages_hash[:javascript] = {:style => [:oo, :functional]}
    second_languages_hash[:python] = {:style => [:oo]}
    second_languages_hash[:java] = {:style => [:oo]}
    second_languages_hash[:clojure] = {:style => [:functional]}
    second_languages_hash[:erlang] = {:style => [:functional]}
    second_languages_hash[:scala] = {:style => [:functional]}
    
    #recursively adding the second_languages nested value in the first language hash.
    first_languages_hash.each do |language, type|
        first_languages_hash[language] = first_languages_hash[language].merge!(second_languages_hash[language])
        end
    # new_languages_hash = Hash[program_lang_name.collect{|name| [name, ""]}]
    #my current new hash which has the first layer of symbols. I'm going to create the other hashes seperately and combine them all in the end
end

