class GamesController < ApplicationController
  def new
    @letters = ('a'..'z').to_a
    @selected_letters = []
    10.times do
      @selected_letters << @letters.sample(1)[0]
    end
    @selected_letters
  end

  def score
    @check_letter = 0
    @word = params[:word]
    @selected_letters = params[:selected_letters]
    @selected_letters.split(' ').each { |char| @check_letter += 1 if @word.include? char }
    @result = true if @check_letter == @word.length
  end
end
