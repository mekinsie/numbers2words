class WordNumber
  def initialize(number)
    @number = number
  end
  def convert_num()
    @number
    ones = Hash.new
    ones = {"0" => "", "1" => "one", "2"=> "two", "3"=> "three","4"=> "four", "5" => "five", "6" => "six", "7" => "seven", "8" => "eight", "9" => "nine", "10"=>"ten", "11" => "eleven", "12" => "twelve"}
    teens = Hash.new
    teens = {"13" => "thirteen", "14" => "fourteen", "15" => "fifteen", "16" => "sixteen", "17" => "seventeen", "18" => "eighteen", "19" => "nineteen"}
    tens = Hash.new
    tens = {"0" => "", "1" => "", "2" => "twenty", "3" => "thirty", "4" => "forty", "5" => "fifty", "6" => "sixty", "7" => "seventy", "8" => "eighty", "9" => "ninety"}
    hundreds = Hash.new
    hundreds = {"1" => "one hundred", "2" => "two hundred"}
    if @number <= 12 
      @word = ones.fetch(@number.to_s)
      elsif @number > 12 && @number < 20
        @word = teens.fetch(@number.to_s)
      elsif @number > 19 && @number < 1000
        split_numbers = @number.to_s.split(//) 
        counter = 0
        split_numbers.each do |number|
          if counter == 0 && split_numbers.length == 2
            @tens = tens.fetch(number)
            counter +=1
            elsif counter == 1 && split_numbers.length == 2
            @ones = ones.fetch(number)
            counter +=1
            elsif counter == 0 && split_numbers.length == 3
              @hundreds = hundreds.fetch(number)
              counter +=1
            elsif counter == 1 && split_numbers.length == 3
              @tens = tens.fetch(number)
              counter +=1
            elsif counter == 2 && split_numbers.length == 3
              @ones = ones.fetch(number)
              counter +=1
          end
        end 
    

        @word = "#{@hundreds}#{@tens} #{@ones}"   
    end
  end 
  @word
end