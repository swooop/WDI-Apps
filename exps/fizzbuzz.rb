
# num_array = (1..100)

# def mathz(num_array)

#   num_array.each do |x|
#     case x
#     when x % 3 ==0 puts fizz

#       when x % 5 == 0 puts buzz

#         when x % 15 == puts fizzbuzz

#         else puts x




#   end
# end


puts (1..100).map {|i|
  f = i % 3 == 0 ? 'Fizz' : nil
  b = i % 5 == 0 ? 'Buzz' : nil
  f || b ? "#{ f }#{ b }" : i
  }