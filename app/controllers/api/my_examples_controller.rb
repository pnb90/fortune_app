class Api::MyExamplesController < ApplicationController
  def fortune_action
    possible_fortunes = [
                          "You shall be rich and famous.",
                          "You will die a horrible death.",
                          ".. I will tell you after you pay the $25 fee."
                        ]

    @fortune = "I look into the magic sands of time and see that... #{ possible_fortunes[rand(possible_fortunes.length)] }"
    #alt @fortune = possible_fortunes.sample

    render 'fortune_view.json.jbuilder'
  end

  def lotto_action
    possible_numbers = (1..60).to_a.shuffle
    @lotto_numbers = possible_numbers.pop(6)

    @formatted_numbers = @lotto_numbers.join(", ")
    # @lotto_numbers = []

    # 6.times do
    #   # @lotto_numbers << possible_numbers.shuffle!.pop

    #   # possible_numbers = possible_numbers.shuffle
    #   # grab_number = possible_numbers.pop
    #   # @lotto_numbers << grab_number
    # end

    # 6.times do
    #   @lotto_numbers << rand(1..61)
    # end

    render 'lotto_view.json.jbuilder'
  end
end
