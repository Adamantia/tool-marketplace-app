class RentalsController < ApplicationController
  before_action :set_rental, only: [:show, :update]
  before_action :authenticate_user!

  def index
    @rentals = Rental.all
  end

  def show
    @item = @rental.item
  end

  def new
    @item = Item.find(params[:item_id])
    @rental = Rental.new
  end

  def create
    @item = Item.find(params[:item_id])
    @user = current_user

    starts = rental_params[:daterange].split(" to ").first
    ends = rental_params[:daterange].split(" to ").last

    @rental = Rental.new()
    @rental.item = @item
    @rental.user = @user
    @rental.starts_at = starts
    @rental.ends_at = ends

    if @rental.save
      redirect_to dashboard_path, notice: "You booked the item successfully. Continue shopping or checkout below."
    else
      render "rentals/new"
    end
  end

  def destroy
    @rental = Rental.find(params[:id])
    @rental.destroy
    redirect_to dashboard_path
  end

private

  def set_rental
    @rental = Rental.find(params[:id])
  end

  def rental_params
      params.require(:rental).permit(:daterange)
  end

end
