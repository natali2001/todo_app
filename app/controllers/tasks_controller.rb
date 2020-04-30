class TasksController < ApplicationController
before_action :set_project

def create
@task =  @project.tasks.create(task_params)
  redirect_to @project
end

def index
 @tasks = Task.all
end

def destroy
  @task = @project.tasks.find(params[:id])
  if @task.destroy
      flash[:success] = "Task was deleted"
  else
      flash[:error] = "Task could not deleted"
   end 
   redirect_to @project
end

def complete
 @task.update_attribute(:completed_at, Time.now)
 redirect_to @project, notice: "Task has completed"
end

private 

def set_project
@project= Project.find(params[:project_id])
end

def task_params
params[ :task].permit( :name)
end

end
