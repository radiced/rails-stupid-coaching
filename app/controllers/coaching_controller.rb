class CoachingController < ActionController::Base

  def ask
  end

  def answer
    # GET '/answer'
    @input = params[:input]
    if @input == "I AM GOING TO WORK RIGHT NOW!"
      @result =  ""
    elsif @input == @input.upcase
      @result = "I can feel your motivation!" + " " + coach_answer(@input)
    else
      @result = coach_answer(@input)
    end
  end

  def coach_answer(input)
    if input.include? "?"
      return "Silly question, get dressed and go to work!"
    elsif input == "I am going to work right now!"
      return  ""
    else
      return "I don't care, get dressed and go to work!"
    end
  end

end
