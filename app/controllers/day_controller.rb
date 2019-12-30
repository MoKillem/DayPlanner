class DayController < ApplicationController
  def index
    @days = Day.order('day ASC')
  end
  def new
  end
  def create
    @new_day = Day.new(day_params)
    @new_day.save
    redirect_to day_index_path
  end

  def move
    @day = Day.find(params[:day_id])
    if params[:type] == '+'
      @forward_day = Day.find_by(day: @day.day + 1)
      unless @forward_day.nil?
        redirect_to day_path(@forward_day)
      else
        redirect_to new_day_path
      end
    else
      @before_day = Day.find_by(day: @day.day - 1)
      unless @before_day.nil?
        redirect_to day_path(@before_day)
      else
        redirect_to new_day_path
      end
    end
  end

  def destroy
    @day = Day.find(params[:id])
    puts @day
    @day.destroy
    redirect_to day_index_path
  end


  def show
    @day = Day.find(params[:id])
    @day_before = @day.day-1
    @day_after = @day.day+1

  end

  private

  def day_params
    params.require(:day).permit(:day,:goal)
  end
end
