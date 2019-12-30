class TasksController < ApplicationController
  def create
    @day = Day.find(params[:day_id])
    @task = @day.tasks.build(task_params)
    if @task.save
      redirect_to @day, notice: 'Task was successfully created'
    else
      render 'day/show'
    end
  end

  def task_status
    @task = Task.find_by( id: params[:task_id])
    puts @task.id
    puts params[:task_id]
    @task.changes_status
    redirect_to day_path(params[:day_id])
  end

  def destroy
    @day = Day.find(params[:day_id])
    @task = @day.tasks.find(params[:id])
    @task.destroy
    redirect_to day_path(params[:day_id])
  end

  private

  def task_params
    params.require(:task).permit(:title,:description,:time_started,:time_ended,:status)
  end
end
