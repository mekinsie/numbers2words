class WordNumber
  def initialize(number)
    @number = number
  end
  def convert_num()
    ones = Hash.new
    ones = {1 => "one", 2=> "two", 3=> "three",4=> "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10=>"ten", 11 => "eleven", 12 => "twelve"}
    teens = Hash.new
    teens = {13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen"}
    @word = ones.fetch(@number)
  end 
  @word
end


# ones - one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve
# teens - thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen
# tens - twenty, thirty, forty, fifty, sixty, seventy, eighty, ninety
# big numbers - hundred, thousand, million, billion

# if num > 100 <= 112 do
#   (ones) fetch + (hundred) + (ten)fetch 
#   if num > 112 <= 119 do
#     (one)fetch + (hundred)fetch + (teen)

# number = WordNumber.new()
# number.convert_num

# "string".conver_num