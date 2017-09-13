def language_hash
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
end

def reformat_languages(languages)
  # your code here
  hsh = {}
  sub_hsh = Hash.new([])
  language_hash.each do |style, data|
    data.each do |lng, sub_data|
      if hsh.dig(lng, :style)
        hsh[lng][:style] << style
      else
        hsh[lng] = {
          type: sub_data[:type],
          style: [style]
        }
      end
    end
  end
  hsh
end
