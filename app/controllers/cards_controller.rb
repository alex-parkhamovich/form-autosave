class CardsController < ApplicationController

  def new
    @card = Card.new
  end

  def show
    @card = Card.find(params[:id])
  end

  def create
    @card = Card.new(card_params)

    if @card.save
      redirect_to @card
    else 
      render 'new'
    end
  end 

  def index
      @cards = Card.all
  end

  private
  def card_params
    params.require(:card).permit(:title, :desc, :hours, :recomendations)
  end
end
