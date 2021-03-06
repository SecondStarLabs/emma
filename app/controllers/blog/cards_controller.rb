class Blog::CardsController < ApplicationController
  before_action :set_blog_card, only: [:show, :edit, :update, :destroy, :move]

  # GET /blog/cards
  # GET /blog/cards.json
  def index
    @blog_cards = Blog::Card.all
  end

  # GET /blog/cards/1
  # GET /blog/cards/1.json
  def show
  end

  # GET /blog/cards/new
  def new
    @blog_card = Blog::Card.new
  end

  # GET /blog/cards/1/edit
  def edit
  end

  # POST /blog/cards
  # POST /blog/cards.json
  def create
    @blog_card = Blog::Card.new(blog_card_params)



    respond_to do |format|
      if @blog_card.save
        ActionCable.server.broadcast "board", { commit: 'addCard', payload: render_to_string(:show, formats: [:json]) }

        format.html { redirect_to @blog_card, notice: 'Card was successfully created.' }
        format.json { render :show, status: :created, location: blog_card_path(@blog_card)  }
      else
        format.html { render :new }
        format.json { render json: @blog_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blog/cards/1
  # PATCH/PUT /blog/cards/1.json
  def update
    respond_to do |format|
      if @blog_card.update(blog_card_params)


        ActionCable.server.broadcast "board", { commit: 'editCard', payload: render_to_string(:show, formats: [:json]) }
        
        format.html { redirect_to @blog_card, notice: 'Card was successfully updated.' }
        format.json { render :show, status: :ok, location: @blog_card }
      else
        format.html { render :edit }
        format.json { render json: @blog_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blog/cards/1
  # DELETE /blog/cards/1.json
  def destroy
    @blog_card.destroy
    respond_to do |format|
      format.html { redirect_to blog_cards_url, notice: 'Card was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def move
    @blog_card.update(blog_card_params)
    render action: :show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog_card
      @blog_card = Blog::Card.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def blog_card_params
      params.require(:card).permit(:list_id, :name, :position)
    end
end
