require 'pry'

def reformat_languages(languages)
  output = {}
  languages.fetch(:oo).each do |name, inner_hash|
    output[name] = inner_hash
    output[name][:style] = [] << :oo
  end
  languages.fetch(:functional).each do |name, inner_hash|
    if output[name] == nil
      output[name] = inner_hash
      output[name][:style] = [] << :functional
    else
      output[name][:style] << :functional
    end
  end
  output
end

# def get_languages
#   languages = {
#     :oo => {
#       :ruby => {
#         :type => "interpreted"
#       },
#       :javascript => {
#         :type => "interpreted"
#       },
#       :python => {
#         :type => "interpreted"
#       },
#       :java => {
#         :type => "compiled"
#       }
#     },
#     :functional => {
#       :clojure => {
#         :type => "compiled"
#       },
#       :erlang => {
#         :type => "compiled"
#       },
#       :scala => {
#         :type => "compiled"
#       },
#       :javascript => {
#         :type => "interpreted"
#       }
#
#     }
#   }
# end
#
# reformat_languages(get_languages)
