module MathGame
  class Game
    def initialize(p1, p2)
      @current_player = p1
      @next_player    = p2
    end

    def start
      while @next_player.is_alive? do
        newQuestion =  Question.new()
        newQuestion.print_question(@current_player.name)
        answer = gets.chomp
        if !newQuestion.check_answer(answer)
          @current_player.life -= 1
        end
        switch_player(@current_player, @next_player)
      end
      winner = @current_player.is_alive? ? @current_player : @next_player
      puts "#{winner.name} wins with the score of #{winner.life}"
      puts "------ Game Over ------"
    end

    def switch_player(p1, p2)
      puts "#{p1.name}: #{p1.life}/3 vs #{p2.name}: #{p2.life}/3"
      @current_player = p2
      @next_player    = p1
      puts "----- New Turn ------"
    end

  end
end
