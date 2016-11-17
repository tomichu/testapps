class TasksController < ApplicationController

	def index
		@project = Project.all
	end

	def show
	end

	def new
		@project = Project.new
	end


	def create
		@project = Project.find(params[:project_id])
		@task = @project.tasks.create(task_params)
		redirect_to project_path(@project.id)
	end
	
	def edit
	end

	def update
		if @project.update(project_params)
			redirect_to projects_path
		else
			render 'edit'
		end
	end

	def destroy
		@task = Task.find(params[:id])
		@task.destroy
		redirect_to project_path(params[:project_id])
	end

	def toggle
		render nothing: true
		@task = Task.find(params[:id])
		@task.done = !@task.done
		@task.save
	end

		


	private

	def task_params
		params[:task].permit(:title)
	end

end
