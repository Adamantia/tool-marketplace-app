class DashboardController < ApplicationController

  def show
    @user = current_user
    @items = @user.items
    @rentals = @user.rentals
  end

  def update
    @rentals = @user.rentals
    redirect_to dashboard_path, notice: "Payment was successful"
  end
end
