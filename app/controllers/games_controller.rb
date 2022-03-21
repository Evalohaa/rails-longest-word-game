require "json"
require "open-uri"

class GamesController < ApplicationController

  def new
    letters = ('A'..'Z').to_a
    @rand_letters = 10.times.map { letters.sample }
    # used to display new random grid
    # used to display form
  end

  def score

    user_word = params[:word]
    url = "https://wagon-dictionary.herokuapp.com/#{user_word}"
    word_serialized = URI.open(url).read
    word_hash = JSON.parse(word_serialized)

    @hash_response = word_hash['found']
    # if word_hash[:found] == true


    # on voit si found = true

    # included?(word, @rand_letters)

    # # on veut recup rand letters qui sont display
    # # on veut recup le mot de l'utilisateur et le mettre en array
    # # ensuitr on applique included ?
    # else

    # end

  end

  private

  # word = "abri"
  # letters = [] # notre sample de lettres

  # def included?(word, letters)
  # word.chars.all? { |letter| word.count(lettre) <= letters.count(lettre) }

  # # renvoi true ou false on compte le nombre de lettre dans le mot
  # # pour mettre notre mot dans un array
  # end

end
