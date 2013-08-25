class ItemsController < ApplicationController
  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      flash[:success] = "Welcome to the Asset Management App!"
      redirect_to @item
    else
      render 'new'
    end
  end

  private

    def item_params
      params.require(:item) .permit(:category, :description, :location, :value, :damage)
    end
end
