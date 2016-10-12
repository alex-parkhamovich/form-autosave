class CardsController < ApplicationController

  def new
    @card = Card.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  def show
    @card = Card.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  def create
    @card = Card.new(card_params)

    respond_to do |format|
      if @card.save
        format.html { redirect_to @user, notice: 'Card was successfully created.' }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end 

  def index
      @cards = Card.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  private
  def card_params
    params.require(:card).permit(:title, :desc, :hours, :recomendations)
  end
end
