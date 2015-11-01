class SkinsController < ApplicationController
  before_action :set_skin, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def skinpage
    @skins = Skin.all
    respond_with(@skins)


  end

  def index
    @skins = Skin.all
    respond_with(@skins)
  end

  def show
    respond_with(@skin)
  end

  def new
    @skin = Skin.new
    respond_with(@skin)
  end

  def edit
  end

  def create
    @skin = Skin.new(skin_params)
    @skin.save
    respond_with(@skin)
  end

  def update
    @skin.update(skin_params)
    respond_with(@skin)
  end

  def destroy
    @skin.destroy
    respond_with(@skin)
  end

  private
    def set_skin
      @skin = Skin.find(params[:id])
    end

    def skin_params
      params.require(:skin).permit(:name2,:avatar)
    end
    end
