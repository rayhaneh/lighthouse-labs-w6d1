module MathGame
  class Question

    def initialize
      @num1 = rand(1..20)
      @num2 = rand(1..20)
    end

    def print_question(name)
      puts "#{name}: What does #{@num1} and #{@num2} equal?"
    end

    def check_answer(answer)
      if answer.to_i == @num1 + @num2
        puts "Yes, you are correct!"
        return true
      else
        puts "Seriously?"
        return false
      end
    end

  end
end