class ChooseskinsController < ApplicationController
  before_action :set_chooseskin, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @chooseskins = Chooseskin.all
    respond_with(@chooseskins)
  end

  def show
    respond_with(@chooseskin)
  end

  def new
    @chooseskin = Chooseskin.new
    respond_with(@chooseskin)
  end

  def edit
  end

  def create
    @chooseskin = Chooseskin.new(chooseskin_params)
    @chooseskin.save
    respond_with(@chooseskin)
  end

  def update
    @chooseskin.update(chooseskin_params)
    respond_with(@chooseskin)
  end

  def destroy
    @chooseskin.destroy
    respond_with(@chooseskin)
  end

  private
    def set_chooseskin
      @chooseskin = Chooseskin.find(params[:id])
    end

    def chooseskin_params
      params[:chooseskin]
    end
end
