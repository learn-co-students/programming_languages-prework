
require 'pry'

def reformat_languages(languages)
  # your code here
  reform_hash={}
  hash_elem={}
  style= []
  index = 0
  languages.each do |key, keyval2|

    keyval2.each do |key2,typehash|
      # binding.pry
      if reform_hash[key2] != nil
#        puts "reform hash[key2] #{reform_hash[key2]}"
        hash_elem = reform_hash[key2]
      else
        hash_elem={}
      end

      typehash.each do |key3, typeval|

      # binding.pry
      if hash_elem == {}
          hash_elem[key3]=typeval
          hash_elem[:style]=[]
          hash_elem[:style] << key
          # binding.pry
      else

              # puts "key #{key}, key2 #{key2}, hash_elem: #{hash_elem}"
        # binding.pry


          if hash_elem[:style].include?(key) == false
  #        binding.pry
          hash_elem[:style] << key
#          puts "shifted key=#{key}"
          end

        end

        # puts "key #{key}, key2 #{key2}, typeval: #{typeval} hash_elem: #{hash_elem}"
  #         puts "key #{key}, key2 #{key2}, typeval: #{typeval} hash_elem_style: #{hash_elem[:style]}"
           hash_elem[key3]=typeval
           # puts "inner typeval #{typeval},  hash_elem #{hash_elem}"

        index += 1
     end

          # puts "outer key2 #{key2},  hash_elem #{hash_elem}"
    #  binding.pry
     reform_hash[key2] = hash_elem
     # puts "reform_hash:  #{reform_hash}\n\n"
  #   binding.pry
     # binding.pry
    end

    index=0

  end

  reform_hash
end