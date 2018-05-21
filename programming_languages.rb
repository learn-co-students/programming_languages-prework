def reformat_languages(languages)
  # your code here
  reformatted = {}
                    #oo => {ruby => {type => "interpreted"}}
  languages.each do |style,lang_hash|
                      #ruby => {type => "interpreted"}
    lang_hash.each do |language,type_hash|

        if reformatted.include?(language)
          reformatted[language][:style] << style #if language is there, just add style to "style" array
        else           #type => "interpreted"
        type_hash.each do |k,v| #if language is not yet in 'reformatted' add language with type & style hash
          arr = []
          reformatted[language] ={k => v, :style => arr << style}
        end
      end
    end
  end

  return reformatted
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
