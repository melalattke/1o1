class StylesController < ApplicationController
  before_action :set_style, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def skinpage #el nombre de la vista 
    @skins = Skin.all
    respond_with(@skins)
  end

  def stylepage #el nombre de la vista 
    @styles = Style.all
    respond_with(@styles)

  end

  def index
    @styles = Style.all
    respond_with(@styles)
  end

  def show
    respond_with(@style)
  end

  def new
    @style = Style.new
    respond_with(@style)
  end

  def edit
  end

  def create
    @style = Style.new(style_params)
    @style.save
    respond_with(@style)
  end

  def update
    @style.update(style_params)
    respond_with(@style)
  end

  def destroy
    @style.destroy
    respond_with(@style)
  end

  def combinationspage
    style_id = params[:style]
    skin_id = params[:skins]

    @skin_name = Skin.find(params[:skins]).name2
    @style_name = Style.find(params[:style]).name

    @skin_items = MatchSkin.where(:Skins_id => skin_id)
    @style_items = MatchStyle.where(:Style_id => style_id)
  end

  private
    def set_style
      @style = Style.find(params[:id])
    end

    def style_params
      params.require(:style).permit(:name, :time, :day, :difficulty,:avatar)
    end
end
