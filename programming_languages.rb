=begin
Iterate over the hash and build a new hash that has the languages as keys
that point to a value of a hash that describes the type and style.

From  :oo => {
        :ruby => {
            :type => "interpreted"
        }
To    :ruby => {
        :type => "interpreted",
            :style => [:oo]
        }
we are removing the oo and functional hashes essentially and moving it to
the language value hash
=end
def reformat_languages(languages)
    ref_hash = {}
    languages.each do |language_style, language_hash|
        language_hash.each do |language, language_type|
            language_type.each do |type, int_or_comp|

                if ref_hash[language].nil?
                    ref_hash[language] = {}  # setting outer most layer of hash to the language
                end
                ref_hash[language][:style] ||= [] #creating array to insert mult styles ie [oo, func]
                ref_hash[language][:style] << language_style #append the key from original second layer

                if ref_hash[language][type].nil? # add type hash
                    ref_hash[language][type] = int_or_comp
                end
            end
        end
    end
 ref_hash
end
