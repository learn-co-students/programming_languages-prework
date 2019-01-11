require 'pry'

def reformat_languages(languages)
new_hash = {}
oo_hash = {}
functional_hash = {}


languages.each do |styles, name|
  functional_hash = languages[:functional]
    functional_hash.each do |name, attributes|
      attributes[:style] = [:functional]
      functional_hash
#binding.pry
    end
end

  languages.each do |styles, name|
    oo_hash = languages[:oo]
      oo_hash.each do |name, attributes|
        attributes[:style] = [:oo]
        oo_hash
#binding.pry
      end
  end

new_hash = oo_hash.merge(functional_hash)
new_hash[:javascript][:style] << :oo

new_hash
#binding.pry

end
