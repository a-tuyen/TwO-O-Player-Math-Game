class Question
  
  def initialize
    @num1 = rand(1..30)
    @num2 = rand(1..30)
  end

  def ask_question
    puts "What is #{@num1} plus #{@num2}?"
  end

  def answer
    @num1 + @num2
  end

end