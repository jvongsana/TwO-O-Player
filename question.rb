class Question
  #question with two numbers and the sum
  attr_accessor :first_num, :second_num, :answer
  
  def initialize
    @first_num = rand(1..20)
    @second_num = rand(1..20)
    @answer = first_num + second_num
  end

end
