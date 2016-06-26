#Lexiconomitron.rb 

class Lexiconomitron 
  def eat_t(words)
    lowercase = words.downcase
    lowercase.delete "t"
  end 

  def shazam(words)
    split = words.split(" ")
    reversed_array = split.map(&:reverse)
    array_no_t= reversed_array.map do |item|
      eat_t(item)
      # item.downcase.delete"t"
    end 
     [array_no_t[0], array_no_t[-1]]
  end 

  def oompa_loompa(words)
   split= words.split(" ")
   array_no_t = split.map do |item|
      eat_t(item)
      #item.downcase.delete"t"
    end
  final_array = array_no_t.select { |item| item.length <= 3 }
    
    final_array
  end 
end 