class MatchStylesController < ApplicationController
  before_action :set_match_style, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @match_styles = MatchStyle.all
    respond_with(@match_styles)
  end

  def show
    respond_with(@match_style)
  end

  def new
    @match_style = MatchStyle.new
    respond_with(@match_style)
  end

  def edit
  end

  def create
    @match_style = MatchStyle.new(match_style_params)
    @match_style.save
    respond_with(@match_style)
  end

  def update
    @match_style.update(match_style_params)
    respond_with(@match_style)
  end

  def destroy
    @match_style.destroy
    respond_with(@match_style)
  end

  private
    def set_match_style
      @match_style = MatchStyle.find(params[:id])
    end

    def match_style_params
      params.require(:match_style).permit(:style_id, :item_id)
    end
end
