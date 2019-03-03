class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      @items = Item.full_search(params[:query])
    else
      @items = Item.all
    end
    @markers = @items.where.not(latitude: nil, longitude: nil).map do |item|
      {
        lat: item.latitude,
        lng: item.longitude,
        infoWindow: { content: render_to_string(partial: "../views/items/map_box.html.erb", locals: { item: item }) }
      }
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @user = current_user
    @item.user = @user
    if @item.valid?
      @item.save!
      redirect_to @item
    else
      render :new
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to @item, notice: "Item was updated"
    else
      render :edit
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_path, notice: "Item was deleted"
  end

  private

  def set_item
    @item = Item.find(params[:item_id])
  end

  def item_params
    params.require(:item).permit(:rate, :make, :description, :location, :picture)
  end
end
