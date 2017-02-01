class GamestwoController <ApplicationController

  def play_scissors
    render("games/play_scissors.html.erb")
  end

  def play_paper

       @computer_move = ["rock", "paper", "scissors"].sample #need to create instance so it survives beyond method and in request response

       if @computer_move == "paper"
        @outcome ="You tied!"
        # @hand = "fa fa-hand-rock-o fa-3x"

      elsif @computer_move == "scissors"
        @outcome = "You lose!"
        # @hand = "fa fa-hand-scissors-o fa-3x"

       else
        @outcome = "You win!"
        # @hand = "fa fa-hand-rock-o fa-3x"

      end
    render("games/play_paper.html.erb")
  end

  def landing
    render("general/landing.html.erb")
  end


end
