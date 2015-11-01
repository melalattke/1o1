class MatchSkinsController < ApplicationController
  before_action :set_match_skin, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @match_skins = MatchSkin.all
    respond_with(@match_skins)
  end

  def show
    respond_with(@match_skin)
  end

  def new
    @match_skin = MatchSkin.new
    respond_with(@match_skin)
  end

  def edit
  end

  def create
    @match_skin = MatchSkin.new(match_skin_params)
    @match_skin.save
    respond_with(@match_skin)
  end

  def update
    @match_skin.update(match_skin_params)
    respond_with(@match_skin)
  end

  def destroy
    @match_skin.destroy
    respond_with(@match_skin)
  end

  private
    def set_match_skin
      @match_skin = MatchSkin.find(params[:id])
    end

    def match_skin_params
      params.require(:match_skin).permit(:Skins_id, :Items_id)
    end
end
