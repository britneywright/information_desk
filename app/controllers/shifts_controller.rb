class ShiftsController < ApplicationController
  before_action :set_shift, only: [:show,:edit,:update]
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

  def edit
  end
  
  def update
    respond_to do |format|
      if @shift.update(shift_params)
        format.html { redirect_to @shift, notice: 'Shift was successfully updated.'}
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @shift.errors, status: :unprocessable_entity }
      end
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
    params.require(:shift).permit(:date,:location,:starttime,:endtime,:user_id,patron_type_occurrences_attributes: [:id,:occurrences],request_category_occurrences_attributes: [:id,:occurrences])
  end  
end
