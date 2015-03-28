class ShiftsController < ApplicationController
  before_action :set_shift, only: [:show]
  before_filter :load_user

  def new
    @shift = @user.shifts.new
  end

  def create
    @shift = @user.shifts.new(shift_params)
    if @shift.save
      redirect_to @shift
    else
      render 'new'
    end
  end
  
  private

  def set_shift
    @shift = Shift.find(params[:id])
  end

  def load_user
    @user = current_user
  end

  def shift_params
    params.require(:shift).permit(:date,:location,:starttime,:endtime,:user_id)
  end  
end
