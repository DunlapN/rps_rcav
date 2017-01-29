class GamestwoController <ApplicationController

  def play_scissors
    render("games/play_scissors.html.erb")
  end

  def play_paper

       @computer_move = ["rock", "paper", "scissors"].sample #need to create instance so it survives beyond method and in request response

       if @computer_move == "paper"
        @outcome ="You tied!"
      elsif @computer_move == "scissors"
        @outcome = "You lose!"
       else
        @outcome = "You win!"
      end
    render("games/play_paper.html.erb")
  end

  def landing
    render("general/landing.html.erb")
  end


end
