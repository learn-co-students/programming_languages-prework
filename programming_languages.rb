require 'pry'
def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, language|
  
    language.each do |name, stats|
      new_hash[name] ||=  stats
      new_hash[name][:style]=[]
      new_hash[name][:style]<< style
      if name == :javascript
        new_hash[name][:style] << :oo
        end
      end
    end
  new_hash
end


#desired result vvv
=begin
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
=end