def reformat_languages(languages)
  # your code here
  new_hash = {} #reformatted hash
                    #oo => {ruby => {type => "interpreted"}}
  languages.each do |style,lang_hash|
                      #ruby => {type => "interpreted"}
    lang_hash.each do |language,type_hash|

        if new_hash.include?(language)
          new_hash[language][:style] << style #if language is there, just add style to "style" array
        else           #type => "interpreted"
        type_hash.each do |k,v| #if language is not yet in 'new_hash' add language with type & style hash
          arr = []
          new_hash[language] ={k => v, :style => arr << style}
        end
      end
    end
  end

  return new_hash
end

=begin
  let(:languages_by_style) {
    {
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
  }
=end
